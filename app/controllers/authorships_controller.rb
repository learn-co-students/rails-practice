class AuthorshipsController < ApplicationController

  def create
    @authorship = Authorship.create(author_id: params[:authorship][:author_id], book_id: params[:book_id])
    redirect_to @authorship.book
  end
  
end