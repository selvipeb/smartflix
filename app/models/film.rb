# frozen_string_literal: true

class Film < ApplicationRecord
  MOVIE_TYPE = 'Movie'
  TV_SERIES_TYPE = 'TV Show'

  validates :show_type, presence: true
  validates :show_type, inclusion: { in: [MOVIE_TYPE, TV_SERIES_TYPE] }
  validates :title, presence: true

  def self.import(params)
    Film.create(params)
  end
end
