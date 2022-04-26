# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PagesController, type: :feature do
  describe 'GET #index' do
    it 'renders pages' do
      visit '/'
      expect(page).to have_content 'Smartflix'
    end
  end
end
