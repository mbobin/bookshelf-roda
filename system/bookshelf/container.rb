require "dry/web/container"

module Bookshelf
  class Container < Dry::Web::Container
    configure do
      config.name = :bookshelf
      config.listeners = true
      config.default_namespace = "bookshelf"
      config.auto_register = %w[lib/bookshelf]
    end

    load_paths! "lib"
  end
end
