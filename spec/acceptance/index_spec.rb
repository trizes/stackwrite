require 'acceptance_spec_helper'

RSpec.feature "Index", :type => :feature do
  let(:index) { Siteprism::Index::Page.new }

  before(:each) do
  end

  scenario 'facebook login', js: true do
    index.load
    index.facebook_mock
    index.facebook.click
    expect(index.alert).to have_content('Successfully signed in')
    expect(current_path).to eq(stack_path)
  end

  scenario 'google+ login', js: true do
    index.load
    index.google_oauth2_mock
    index.google.click
    expect(index.alert).to have_content('Successfully signed in')
    expect(current_path).to eq(stack_path)
  end

  scenario 'vk login', js: true do
    index.load
    index.vkontakte_mock
    index.vk.click
    expect(index.alert).to have_content('Successfully signed in')
    expect(current_path).to eq(stack_path)
  end
end
