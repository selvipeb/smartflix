require 'rails_helper'

RSpec.describe Film, type: :model do
  describe '#show_type' do
    subject { described_class.new(show_type: 'show_type').show_type }

    it { is_expected.not_to be_nil }
  end
  describe '#title' do
    subject { described_class.new(title: 'title').title }

    it { is_expected.not_to be_nil }
  end
end
