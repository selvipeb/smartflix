# frozen_string_literal: true

require 'csv'

module Tasks
  class ImportFilms
    FILE_PATH = 'lib/assets/netflix_titles.csv'

    include Rake::DSL

    def initialize
      namespace :import_films_from_csv do
        desc 'Import films from CSV'
        task :run, %i[file_path] => :environment do |_, args|
          file_path = args.to_a[0]
          CSV.foreach(file_path, headers: true, col_sep: ',') do |row|
            create_film(row.to_hash)
          end
        end
      end
    end

    private

    def create_film(row)
      ImportFilm.new(row).call
    end
  end
end

Tasks::ImportFilms.new
