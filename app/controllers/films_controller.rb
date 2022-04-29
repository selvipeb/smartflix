class FilmsController < ApplicationController
  def index
    @films = helpers.get_csv_data
  end
end
