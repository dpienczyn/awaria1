require_relative 'boot'
require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Awaria
  class Application < Rails::Application
  	config.middleware.use Rack::Deflater
    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
    config.exceptions_app = self.routes

    config.cache_store = :memory_store
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.i18n.default_locale = :pl
  end
end
