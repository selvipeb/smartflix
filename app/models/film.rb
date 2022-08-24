# frozen_string_literal: true

class Film < ApplicationRecord
  MOVIE = 'Movie'.freeze
  TV_SERIES = 'TV Show'.freeze

  validates :show_type, presence: true
  validates :show_type, inclusion:  { in: [MOVIE, TV_SERIES] }
  validates :title, presence: true

  def self.import(params)
    Film.create(params)
  end
end
