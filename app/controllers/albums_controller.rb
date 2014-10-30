class AlbumsController < ApplicationController

  def index
    @albums = Album.all
    @albums = @albums.order(vote: :desc)
  end

  def show
    @album = Album.find(params[:id])
  end
  
  def edit
    @album = Album.find(params[:id])
  end

  def update
   @album = Album.find(params[:id])
    if @album.update(params.require(:album).permit(:title, :artist, :description))
      redirect_to album_path(params[:id])
    else
      render :edit
    end 
  end
  
  def new
    @album = Album.new
  end

  def create
    @album = Album.new(params.require(:album).permit(:title, :artist, :description))
    @album.vote = 0
    if @album.save
      redirect_to albums_path
    else
      render :new
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to albums_path
  end

  def upvote 
    @album = Album.find(params[:id])
    @album.vote += 1 
    @album.save 
    redirect_to album_path(params[:id])
  end

end

