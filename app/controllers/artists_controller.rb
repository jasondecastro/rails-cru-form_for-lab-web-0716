class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @new_artist = Artist.create(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@new_artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @updated_artist = Artist.update(params[:id], params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@updated_artist)
  end
end