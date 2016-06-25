require 'rails_helper'

RSpec.describe Comment, :type => :model do
  describe 'relations' do
    it { is_expected.to belong_to(:post) }
  end

  describe 'validation' do
    it { is_expected.to validate_presence_of(:body) }
    it { is_expected.to validate_presence_of(:post_id) }
  end
end
