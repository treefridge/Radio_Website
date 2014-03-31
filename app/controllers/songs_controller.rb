class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  # GET /songs
  # GET /songs.json
  def index
    @songs = Song.all
  end

  # GET /songs/1
  # GET /songs/1.json
  def show
  end

  # GET /songs/new
  def new
    @song = Song.new
  end

  # GET /songs/1/edit
  def edit
  end

  # POST /songs
  # POST /songs.json
  def create
    @song = Song.new(song_params)

    if @song.save
      redirect_to songs_path
    else
      #DO NOTHING
    end

  end

  # PATCH/PUT /songs/1
  # PATCH/PUT /songs/1.json
  def update
    
    if @song.update(song_params)
      redirect_to songs_path
    else
      #DO NOTHING
    end

  end

  # DELETE /songs/1
  # DELETE /songs/1.json
  def destroy
    @song.destroy
    redirect_to songs_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = Song.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def song_params
      params.require(:song).permit(:title, :cancon, :instrumental, 
                                    :album_id, :artist_id, :song_id, :band_id)
    end
end