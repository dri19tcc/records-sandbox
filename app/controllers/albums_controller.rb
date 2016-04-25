class AlbumsController < ApplicationController
  def index
    @albums = Album.order(artist: :asc)
  end

  def by_artist
    @albums = Album.where(artist: params[:artist]).order(artist: :asc)
    render :index
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(albums_create_params[:album])
    if @album.save
      redirect_to album_path(@album.id)
    else
      render :new
    end
  end

  def show
    @album = Album.find(params[:id])
    # render :view
  end

  private

  def albums_create_params #you need to tell rails what params can be in the data
    params.permit(album: [:artist, :title]) #this is a method defined in our params object
  end #you have to permit parameters when you want to use it in ActiveRecord
end











#
