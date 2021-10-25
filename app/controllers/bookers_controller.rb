class BookersController < ApplicationController
  def new
    @book = Book.new
  end

  def index
    @book = Book.all
  end

  def create
      book = Book.new(book_params)
      book.save
      redirect_to booker_path(book.id)
  end

  def show
    @book = Book.find(params[:id])
  end


  def edit
    @book = Book.find(params[:id])
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to bookers_path
  end

    private
  # ストロングパラメータ
  def book_params
    params.permit(:title, :body)
  end

end