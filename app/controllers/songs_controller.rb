class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @new_song = Song.create(params.require(:song).permit(:name, :artist_id, :genre_id))
    redirect_to song_path(@new_song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @updated_song = Song.update(params[:id], params.require(:song).permit(:name))
    redirect_to song_path(@updated_song)
  end
end
