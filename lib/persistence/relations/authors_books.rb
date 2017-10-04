module Persistence
  module Relations
    class AuthorsBooks < ROM::Relation[:sql]
      schema(infer: true) do
        associations do
          belongs_to :author
          belongs_to :book
        end
      end
    end
  end
end
