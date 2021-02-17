class SongsController < ApplicationController
  before_action :set_song, only: %i[ show edit update ]
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def show
  end

  def edit
  end

  def create
    @song = Song.new
    @song.name = params.require(:song).permit(:name)
    @song.artist = Artist.find(params.require(:song).permit(:artist_id)[:artist_id])
    @song.genre = Genre.find(params.require(:song).permit(:genre_id)[:genre_id])
    @song.save
    redirect_to song_path(@song)
  end

  def update
    @song.update(params.require(:song).permit(:name))
    @song.update(artist: Artist.find(params.require(:song).permit(:artist_id)[:artist_id]))
    @song.update(genre: Genre.find(params.require(:song).permit(:genre_id)[:genre_id]))
    @song.save
    redirect_to song_path(@song)
  end

  private
    def set_song
      @song = Song.find(params[:id])
    end
end
