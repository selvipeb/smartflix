# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'films/index.html.haml', type: :view do
  it 'displays the title' do
    assign(:films, [
             { 'show_id' => 's1',
               'type' => 'Movie',
               'title' => 'Dick Johnson Is Dead',
               'director' => 'Kirsten Johnson',
               'cast' => nil,
               'country' => 'United States',
               'date_added' => 'September 25, 2021',
               'release_year' => '2020',
               'rating' => 'PG-13',
               'duration' => '90 min',
               'listed_in' => 'Documentaries',
               'description' =>
                 'As her father nears the end of his life, ...' }
           ])

    render

    expect(rendered).to have_text('Dick Johnson Is Dead')
  end
end
