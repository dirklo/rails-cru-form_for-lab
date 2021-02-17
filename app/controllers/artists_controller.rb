class ArtistsController < ApplicationController
  before_action :set_artist, only: %i[ show edit update ]
  
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def show
  end

  def edit
  end

  def create
    @artist = Artist.create(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def update
    @artist = Artist.update(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
  end

  private
    def set_artist
      @artist = Artist.find(params[:id])
    end
end
