class WelcomeController < ApplicationController

  skip_before_action :verify_authenticity_token, only: [:clairol]

  def index
    file = File.open("db/seeds_authors_books.rb", "rb")
    @seed_file = file.read
    file.close
  end

  def clairol
    require_relative "../../db/seeds_authors_books.rb" #ugh?
    render json: { ok: true }
  end

end