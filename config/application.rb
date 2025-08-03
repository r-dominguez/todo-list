require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module ToDoList
  class Application < Rails::Application
    config.load_defaults 8.0

    config.autoload_lib(ignore: %w[assets tasks])

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "America/Montevideo"
    # puede ser "Montevideo" => "America/Montevideo"
    # config.eager_load_paths << Rails.root.join("extras")
    
    config.active_job.queue_adapter = :sidekiq
  end
end
