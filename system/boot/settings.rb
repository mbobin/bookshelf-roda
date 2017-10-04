Bookshelf::Container.finalize :settings do |container|
  init do
    require "bookshelf/settings"
  end

  start do
    settings = Bookshelf::Settings.load(container.config.root, container.config.env)
    container.register "settings", settings
  end
end
