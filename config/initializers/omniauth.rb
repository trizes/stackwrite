Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, Rails.configuration.omniauth['facebook']['key'], Rails.configuration.omniauth['facebook']['secret']
  provider :google_oauth2, Rails.configuration.omniauth['google']['key'], Rails.configuration.omniauth['google']['secret']
  provider :vkontakte, Rails.configuration.omniauth['vk']['key'], Rails.configuration.omniauth['vk']['secret']
end
