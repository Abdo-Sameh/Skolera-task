require 'csv'

class CsvWorker
  include Sidekiq::Worker
  sidekiq_options queue: :crawler, retry: false, backtrace: true

  def perform
    model_name = 'user'
    model = model_name.classify.constantize
    # puts options[:model_name]
    path = "#{Rails.root.to_s}/tmp/#{filename(model_name)}"

    columns = model.send(:column_names)

    CSV.open(path, 'wb', headers: true) do |csv|
      csv << columns
      model.select(columns).find_each do |m|
        csv << m.attributes.values
      end
    end
  end

  private

  def filename(model)
    [model.to_s.try(:downcase), Time.current.try(:to_i)].join('_') + '.csv'
  end

end
