module Test
  module WebHelpers
    module_function

    def app
      Bookshelf::Application.app
    end
  end
end
