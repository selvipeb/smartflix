# frozen_string_literal: true

require 'rails_helper'
require 'csv'

RSpec.describe FilmsController, type: :feature do
  describe 'GET #index' do
    it 'renders Smartflix as title' do
      visit '/'
      expect(page).to have_content 'Smartflix'
    end

    it 'has netflix titles on page' do
      some_titles = get_csv_data.pluck('title')[0..10]

      some_titles.each do |title|
        visit '/'
        expect(page).to have_content title
      end
    end
  end
end
