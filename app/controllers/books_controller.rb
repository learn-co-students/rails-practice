class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @all_authors = Author.all
    @book = Book.includes(:authors).find(params[:id])
    @authorship = Authorship.new
  end
  
end