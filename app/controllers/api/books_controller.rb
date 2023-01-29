class Api::BooksController < ApplicationController
  skip_before_action :verify_authenticity_token, raise: false

  def index
    @books = Book.all
    render json: @books
  end

  def show
    @book = Book.find(params[:id]) 
    render json:@book
  end

  def create
    @book = Book.create(book_params)  
    render json: @book
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)

    render json: @book
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy 
  end

  private

  def book_params
    params.require(:book).permit(:title, :description, :admin_user_id)
  end
end
