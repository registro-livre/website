require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'neo4j/railtie'

Bundler.require(*Rails.groups)

module AppReails
  class Application < Rails::Application
    config.neo4j.session_type = :server_db
    config.neo4j.session_path = ENV['GRAPHENEDB_URL'] || 'http://localhost:7474'

    config.generators do |g|
      g.helper false
      g.view_specs false
      g.assets false
      g.integration_tool false
    end

    config.app_generators do |g|
      g.orm :neo4j
      g.test_framework :rspec
    end

    config.assets.initialize_on_precompile = false

    config.middleware.use Rack::Deflater

  end
end
