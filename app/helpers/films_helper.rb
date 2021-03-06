# frozen_string_literal: true

require 'csv'

module FilmsHelper
  FILE_PATH = 'lib/assets/netflix_titles.csv'
  def csv_data
    CSV.foreach(FILE_PATH, headers: true).map(&:to_h)
  end
end
