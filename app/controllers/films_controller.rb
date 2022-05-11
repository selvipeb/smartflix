# frozen_string_literal: true

class FilmsController < ApplicationController
  include FilmsHelper
  def index
    @films = csv_data.take(20)
  end
end
