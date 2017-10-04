require "bookshelf/repository"

module Persistence
  module Repositories
    class Books < Bookshelf::Repository[:books]
      relations :authors
      commands :create, update: :by_pk, delete: :by_pk

      def listings
        books.to_a
      end
    end
  end
end
