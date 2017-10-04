require "bookshelf/view/controller"
require "bookshelf/container"
require "bookshelf/import"

module Bookshelf
  module Views
    module Books
      class Index < Bookshelf::View::Controller
        configure do |config|
          config.template = "books/index"
        end

        include Bookshelf::Import.args["Bookshelf.repositories.books"]

        def locals(options = {})
          super.merge(books: books.listing)
        end
      end
    end
  end
end
