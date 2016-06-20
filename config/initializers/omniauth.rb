Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, Rails.configuration.omniauth['key'], Rails.configuration.omniauth['secret']
end
