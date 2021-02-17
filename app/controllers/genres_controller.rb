class GenresController < ApplicationController
  before_action :set_genre, only: %i[ show edit update ]
  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def show
  end

  def edit
  end

  def create
    @genre = Genre.create(params.require(:genre).permit(:name))
    redirect_to genre_path(@genre)
  end

  def update
    @genre = Genre.update(params.require(:genre).permit(:name))
    redirect_to genre_path(@genre)
  end

  private
    def set_genre
      @genre = Genre.find(params[:id])
    end
end
