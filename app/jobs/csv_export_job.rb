# class CsvExportJob < ApplicationJob
#   queue_as :default
#
#   def perform(*args)
#     model = User.classify.constantize
#     path = "#{Rails.root.to_s}/tmp/#{filename('users')}"
#
#     columns = model.send(:column_names)
#
#     CSV.open(path, 'wb', headers: true) do |csv|
#       csv << columns
#
#       model.select(columns).find_each do |m|
#         csv << m.attributes.values
#       end
#     end
#   end
#
#   private
#
#   def filename(model)
#     [model.to_s.try(:downcase), Time.current.try(:to_i)].join('_') + '.csv'
#   end
#
# end
