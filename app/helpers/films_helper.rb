# frozen_string_literal: true

require 'csv'

module FilmsHelper
  def get_all_films
    Film.all
  end
end
