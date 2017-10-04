module Test
  module DatabaseHelpers
    module_function

    def rom
      Bookshelf::Container["persistence.rom"]
    end

    def db
      Bookshelf::Container["persistence.db"]
    end
  end
end
