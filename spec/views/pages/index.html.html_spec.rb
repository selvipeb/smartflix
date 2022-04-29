# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'pages/index.html.haml', type: :view do
  it 'displays the title' do
    render

    expect(rendered).to have_text('Smartflix')
  end
end
