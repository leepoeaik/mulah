class CsvDataController < ApplicationController
  def index
    @csv_data = CSV.read(Rails.root.join('public','Table_input.csv'), headers: true)
  end
end
