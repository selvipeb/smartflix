# frozen_string_literal: true

require 'rails_helper'
require 'csv'

RSpec.describe FilmsController, type: :feature do
  describe 'GET #index' do
    it 'renders Smartflix as title' do
      visit '/'
      expect(page).to have_content 'Smartflix'
    end

    it 'does not have the 21th title on page' do
      visit '/'
      expect(page).not_to have_content 'Monsters Inside: The 24 Faces of Billy Milligan'
    end
  end
end
