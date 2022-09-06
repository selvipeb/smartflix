# frozen_string_literal: true

require 'rails_helper'
require 'rake'

RSpec.describe ImportFilm do
  subject { described_class.new(params).call }

  let(:params) do
    {
      'type': 'Movie',
      'title': 'Dick Johnson Is Dead',
      'director': ',Kirsten Johnson',
      'cast': '',
      'country': 'United States',
      'date_added': 'September 25, 2021',
      'release_year': 2020,
      'rating': 'PG-13',
      'duration': '90 min',
      'listed_in': 'Documentaries',
      'description': 'As her father nears the end of his life, filmmaker Kirsten Johnson stages his death in inventive and comical ways to help them both face the inevitable.'
    }
  end

  it 'triggers Film.import' do
    expect(Film).to receive(:import).with(
      a_hash_including(title: 'Dick Johnson Is Dead')
    )

    subject
  end

  it 'adds another Film record' do
    expect { subject }.to change(Film, :count).by(1)
  end
end
