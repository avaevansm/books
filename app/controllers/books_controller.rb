class BooksController < ApplicationController
  def index
    @books = Book.all

    render :index
  end

  def create
    @book = Book.create(book_params)

    redirect_to "/books/#{@book.id}"
  end

  def show
    @book = Book.find(params["id"])

    render :show
  end

  def edit
    @book = Book.update(params["id"])

    render :show
  end

  def delete
    @book = Book.destroy(params["id"])

    render :index
  end


end
