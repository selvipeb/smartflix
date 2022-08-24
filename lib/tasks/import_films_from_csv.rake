# frozen_string_literal: true
require 'csv'

module Tasks
  class ImportFilms
    FILE_PATH = 'lib/assets/netflix_titles.csv'.freeze

    include Rake::DSL

    def initialize
      namespace :import_films_from_csv do
        desc 'Import films from CSV'
        task :run, %i[:file_path] => :environment do |_, args|
          file_path = args.to_a[0]
          CSV.foreach(file_path, headers: true, col_sep: ",") do |row|
            create_film(build_row(row))
          end
        end
      end
    end

    private

    def build_row(params)
      date_added = params['date_added'].nil? ? nil : params['date_added'].to_date
      {
        'show_type': params['type'],
        'title': params['title'],
        'director': params['director'],
        'cast': params['cast'],
        'country': params['country'],
        'date_added': date_added,
        'release_year': params['release_year'],
        'rating': params['rating'],
        'duration': params['duration'],
        'listed_in': params['listed_in'],
        'description': params['description']
      }
    end
    
    def create_film(args)
      Film.import(**args)
    end

  end
end

Tasks::ImportFilms.new