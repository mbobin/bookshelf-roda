module Persistence
  module Relations
    class Authors < ROM::Relation[:sql]
      schema(:authors, infer: true) do
        associations do
          has_many :books, through: :authors_books
        end
      end
    end
  end
end
