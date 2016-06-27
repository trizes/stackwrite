require 'rails_helper'

RSpec.describe Post, :type => :model do
  describe 'relations' do
    it { is_expected.to belong_to(:author) }
    it { is_expected.to have_many(:comments) }
  end

  describe 'validation' do
    it { is_expected.to validate_presence_of(:body) }
    it { is_expected.to validate_length_of(:body).is_at_most(1000) }
    it { is_expected.to validate_presence_of(:author_id) }
  end
end
