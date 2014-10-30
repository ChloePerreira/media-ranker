class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    @movies = @movies.order(vote: :desc)
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end
  
  def update
    @movie = Movie.find(params[:id])
    if @movie.update(params.require(:movie).permit(:title, :description, :director))
      redirect_to movie_path(params[:id])
    else
      render :edit
    end
  end
  
  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(params.require(:movie).permit(:title, :description, :director))
    @movie.vote = 0
    if @movie.save
      redirect_to movies_path
    else
      render :new
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path
  end

  def upvote
    @movie = Movie.find(params[:id])
    @movie.vote += 1 
    @movie.save
    redirect_to movie_path(params[:id])
  end

end
