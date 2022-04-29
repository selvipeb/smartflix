require 'csv'

module FilmsHelper
  def get_csv_data
    data = []
    CSV.foreach("lib/assets/netflix_titles.csv", headers: true) do |row|
      data << row.to_h
    end
    data
  end
end
