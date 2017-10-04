module Persistence
  module Relations
    class Books < ROM::Relation[:sql]
      schema(infer: true) do
        associations do
          has_many :authors, through: :authors_books
        end
      end
    end
  end
end

