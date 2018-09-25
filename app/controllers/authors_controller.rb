class AuthorsController < ApplicationController

  before_action :gat_author, only: [:show, :edit, :update]

  def index
    @authors = Author.all
  end

  def show
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to @author
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @author.update(author_params)
      redirect_to @author
    else
      render :edit
    end
  end

  def destroy
    Author.delete(params[:id])
    redirect_to authors_path
  end

  private
  def gat_author
    @author = Author.find(params[:id])
  end

  def author_params 
    params.require(:author).permit(:name, :birth_year)
  end

end