require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ProjObsSocial
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
<<<<<<< HEAD
    config.time_zone = 'Brasilia'
 
   # config.i18n.enforce_available_locales = false
    #config.i18n.available_locales = ["pt-BR"]
    config.i18n.default_locale = "pt-BR"
=======
    config.time_zone = "Brasilia"

    config.i18n.enforce_available_locales = false
    config.i18n.available_locales = ["pt-BR"]
    config.i18n.default_locale = :'pt-BR'
>>>>>>> 46302edc735467f743d5f55a09072a761777cf70
  end
end
