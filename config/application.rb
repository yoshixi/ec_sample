require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module EcSample
  class Application < Rails::Application
    config.generators do |g|
      g.helper false
      g.test_framework false
      g.javascripts false
    end

    # config.action_dispatch.default_headers = {
    #   'Access-Control-Allow-Credentials' => 'true',
    #   'Access-Control-Allow-Origin' => 'http://localhost:8888',
    #   'Access-Control-Request-Method' => '*'
    # }

    config.paths.add File.join('app', 'api'), glob: File.join('**', '*.rb')
    config.autoload_paths += Dir[Rails.root.join('app', 'api', '*')]
  end
end
