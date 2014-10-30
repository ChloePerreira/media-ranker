class BooksController < ApplicationController
  def index
    @books = Book.all
    @books = @books.order(vote: :desc)
  end

  def show
    @book = Book.find(params[:id])
  end
 
  def new
    @book = Book.new
  end
 
  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(params.require(:book).permit(:title, :author, :description))
      redirect_to book_path(params[:id])
    else
      render :edit
    end
  end

  def create
    @book = Book.new(params.require(:book).permit(:title, :author, :description))
    @book.vote = 0
    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  def upvote
    @book = Book.find(params[:id])
    @book.vote += 1
    @book.save
    redirect_to book_path(params[:id])
  end

end
