require_relative 'boot'
require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

# Explore options for initialization including run rake task import:organizations
# Rails.load_config_initializers
# Rake::Task['import:organizations'].execute

module Backend
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    require 'rake'
    load_tasks

    Rake::Task['db:setup']
    Rake::Task['db:migrate']

    Rake::Task['import:organizations'].invoke
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
