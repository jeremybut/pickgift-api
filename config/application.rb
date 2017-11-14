# frozen_string_literal: true

require_relative 'boot'

require 'rails'
require 'active_model/railtie'
require 'active_record/railtie'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'

Bundler.require(*Rails.groups)

module PickGift
  class Application < Rails::Application
    config.load_defaults 5.1
    config.api_only = true

    Rails.application.routes.default_url_options[:host] = 'http://localhost:3000'
    config.active_job.queue_adapter = :sidekiq

    config.action_mailer.delivery_method = :mailjet_api
    # I18n locales
    I18n.enforce_available_locales = false
    I18n.config.available_locales = :fr
    config.i18n.default_locale = :fr

    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource '*', headers: :any,
                      methods: %i[get post options put head delete]
      end
    end
  end
end
