# frozen_string_literal: true

class ImportFilm
  def initialize(params)
    @params = params.symbolize_keys
  end

  def call
    Film.import(build_row)
  end

  private

  attr_reader :params

  def build_row
    date_added = params[:date_added].nil? ? nil : params[:date_added].to_date
    {
      'show_type': params[:type],
      'title': params[:title],
      'director': params[:director],
      'cast': params[:cast],
      'country': params[:country],
      'date_added': date_added,
      'release_year': params[:release_year],
      'rating': params[:rating],
      'duration': params[:duration],
      'listed_in': params[:listed_in],
      'description': params[:description]
    }
  end
end
