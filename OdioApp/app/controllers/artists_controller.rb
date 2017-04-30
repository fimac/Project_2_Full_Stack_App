class ArtistsController < ApplicationController
  def index
    @all_artists = Artist.all
  end

  def show
    @artist = Artist.find_by( id: params['id'] )
  end

  def new
    @artist = Artist.new
  end

  def create
    artist = Artist.create( artist_strong_params )
    redirect_to "/artists/#{artist.id}"
  end

  def edit
    @artist = Artist.find_by(id: params['id'])
  end

  def update
    artist = Artist.find_by(id: params['id'])
    artist.update ( artist_strong_params )
    redirect_to "/artists/#{artist.id}"
  end

  def destroy
    artist = Artist.find_by(id: params['id'])
    artist.destroy
    redirect_to "/artists"
  end

  private
  def artist_strong_params
    params.require(:artist).permit(:name, :bio, :image)

  end
end
