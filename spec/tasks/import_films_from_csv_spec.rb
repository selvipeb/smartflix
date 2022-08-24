# frozen_string_literal: true

require 'rails_helper'
require 'rake'

RSpec.describe 'rake import_films_from_csv:run', type: :task do
  subject { Rake::Task["import_films_from_csv:run"].invoke(file_path) }

  let(:file_path) { 'spec/fixtures/files/flix.csv' }

  let(:file_content) { file_fixture('flix.csv').read }
  let(:task) { Rake::Task["import_films_from_csv:run"] }

  it 'triggers Film.import from csv' do
    expect(Film).to receive(:import).with(
      a_hash_including(title: 'Dick Johnson Is Dead')
    )
    
    subject
  end
end
