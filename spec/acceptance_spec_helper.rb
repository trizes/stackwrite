ENV["RAILS_ENV"] = 'test'
require 'spec_helper'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'capybara'
require 'capybara/rspec'
require 'capybara/poltergeist'
require 'site_prism'

# Capybara.register_driver :poltergeist_debug do |app|
#   Capybara::Poltergeist::Driver.new(app, :inspector => true)
# end
# Capybara.default_driver = :selenium
# Capybara.javascript_driver = :webkit
# Capybara.default_driver = :webkit
# Capybara.default_driver = :poltergeist
Capybara.javascript_driver = :poltergeist
# Capybara.javascript_driver = :poltergeist_debug
# Capybara.use_default_driver

OmniAuth.config.test_mode = true

# load site prism
Dir["#{File.dirname(__FILE__)}/support/siteprism/**/*.rb"].each {|f| require f}
