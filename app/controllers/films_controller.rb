# frozen_string_literal: true

class FilmsController < ApplicationController
  include FilmsHelper
  def index
    @films = get_all_films.take(20)
  end
end
