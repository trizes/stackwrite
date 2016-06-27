require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  before(:each) do
    @author = FactoryGirl.create(:author_with_posts)
  end

  describe '#index' do
    it 'returns all posts' do
      get :index, author_id: @author.id
      expect(response).to have_http_status(:ok)
    end
  end

  describe '#create' do
    xit ''
  end
end
