begin
  require "pry-byebug"
rescue LoadError
end

require_relative "bookshelf/container"

Bookshelf::Container.finalize!

require "bookshelf/application"
