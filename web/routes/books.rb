# Define your routes like this:
#
class Bookshelf::Application
  route "books" do |r|
    r.get "/" do
      r.view "books.index"
    end
  end
end
