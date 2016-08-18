class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    @new_genre = Genre.create(params.require(:genre).permit(:name))
    redirect_to genre_path(@new_genre)
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @updated_genre = Genre.update(params[:id], params.require(:genre).permit(:name))
    redirect_to genre_path(@updated_genre)
  end
end