class UsersController < ApplicationController

  def csv
    CsvWorker.perform_async
  end

end