require "bookshelf/view/controller"

module Bookshelf
  module Views
    class Welcome < Bookshelf::View::Controller
      configure do |config|
        config.template = "welcome"
      end
    end
  end
end
