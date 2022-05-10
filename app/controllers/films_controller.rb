# frozen_string_literal: true

# This is Films Controller
class FilmsController < ApplicationController
  include FilmsHelper
  def index
    @films = csv_data.take(20)
  end
end
