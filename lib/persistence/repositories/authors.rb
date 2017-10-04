require "bookshelf/repository"

module Persistence
  module Repositories
    class Authors  < Bookshelf::Repository[:authors]
      relations :books
      commands :create, update: :by_pk, delete: :by_pk
    end
  end
end

