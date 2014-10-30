class StaticController < ApplicationController

  def index
    @books = Book.all.order(vote: :desc).first(5)
    @albums = Album.all.order(vote: :desc).first(5)
    @movies = Movie.all.order(vote: :desc).first(5)
  end  

end
