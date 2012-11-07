class MusicAlbumsController < ApplicationController
  # GET /music_albums
  # GET /music_albums.json
  def index
    @music_albums = MusicAlbum.all

    respond_to do |format|
      format.json { render json: @music_albums }
    end
  end

  # GET /music_albums/1
  # GET /music_albums/1.json
  def show
    @music_album = MusicAlbum.find(params[:id])

    respond_to do |format|
      format.json { render json: @music_album }
    end
  end

  # GET /music_albums/new
  # GET /music_albums/new.json
  def new
    @music_album = MusicAlbum.new

    respond_to do |format|
      format.json { render json: @music_album }
    end
  end

  # GET /music_albums/1/edit
  def edit
    @music_album = MusicAlbum.find(params[:id])
  end

  # POST /music_albums
  # POST /music_albums.json
  def create
    @music_album = MusicAlbum.new(params[:music_album])

    respond_to do |format|
      if @music_album.save
        format.json { render json: @music_album, status: :created, location: @music_album }
      else
        format.json { render json: @music_album.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /music_albums/1
  # PUT /music_albums/1.json
  def update
    @music_album = MusicAlbum.find(params[:id])

    respond_to do |format|
      if @music_album.update_attributes(params[:music_album])
        format.json { head :no_content }
      else
        format.json { render json: @music_album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /music_albums/1
  # DELETE /music_albums/1.json
  def destroy
    @music_album = MusicAlbum.find(params[:id])
    @music_album.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
  end
end
