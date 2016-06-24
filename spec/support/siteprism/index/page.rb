require_relative '../base/page'

module Siteprism
  module Index
    class Page < Base::Page
      set_url '/'

      element :facebook, '.facebook'
      element :google, '.google'
      element :vk, '.vk'

      def facebook_mock
        OmniAuth.config.mock_auth[:facebook] = OmniAuth::AuthHash.new({
          :provider => 'facebook',
          :uid => '123545',
          :info => {'name': 'Test'}
        })
      end

      def google_oauth2_mock
        OmniAuth.config.mock_auth[:google_oauth2] = OmniAuth::AuthHash.new({
          :provider => 'google_oauth2',
          :uid => '123545',
          :info => {'name': 'Test'}
        })
      end

      def vkontakte_mock
        OmniAuth.config.mock_auth[:vkontakte] = OmniAuth::AuthHash.new({
          :provider => 'vkontakte',
          :uid => '123545',
          :info => {'name': 'Test'}
        })
      end
    end
  end
end
