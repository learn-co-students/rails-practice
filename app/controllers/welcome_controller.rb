class WelcomeController < ApplicationController

  def index
    @mapping = DomainMapping.find_by_host(request.host)

    file = File.open("db/seeds_authors_books.rb", "rb")
    @seed_file = file.read
    file.close
  end

end