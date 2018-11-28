class WelcomeController < ApplicationController

  def index
    file = File.open("db/seeds_authors_books.rb", "rb")
    @seed_file = file.read
    file.close
  end

end