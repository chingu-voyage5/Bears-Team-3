require_relative 'boot'
require 'rails/all'
# Rake::Task['import:organizations'].invoke

# Rake("import:organizations")

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Backend
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2


  ###
  # rake = Rake.application
  # rake.init
  # you can import addition *.rake files
  # app.add_import 'some/other/file.rake'
  # rake.load_rakefile
  (rake['db:create'].invoke "testapp_development")
  #=> Database 'testapp_development' already exists
  #=> Database 'testapp_test' already exists
  ###

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
