# auto_register: false

require "rom-repository"
require "bookshelf/container"
require "bookshelf/import"

Bookshelf::Container.boot! :rom

module Bookshelf
  class Repository < ROM::Repository::Root
    include Bookshelf::Import.args["persistence.rom"]
  end
end
