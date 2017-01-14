class PlaytimesController < ApplicationController
  before_action :set_playtime, only: [:show, :edit, :update, :destroy]

  # GET /playtimes
  # GET /playtimes.json
  def index
    @playtimes = Playtime.all
  end

  # GET /playtimes/1
  # GET /playtimes/1.json
  def show
  end

  # GET /playtimes/new
  def new
    @playtime = Playtime.new
  end

  # GET /playtimes/1/edit
  def edit
  end

  # POST /playtimes
  # POST /playtimes.json
  def create
    @playtime = Playtime.new(playtime_params)

    respond_to do |format|
      if @playtime.save
        format.html { redirect_to @playtime, notice: 'Playtime was successfully created.' }
        format.json { render :show, status: :created, location: @playtime }
      else
        format.html { render :new }
        format.json { render json: @playtime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /playtimes/1
  # PATCH/PUT /playtimes/1.json
  def update
    respond_to do |format|
      if @playtime.update(playtime_params)
        format.html { redirect_to @playtime, notice: 'Playtime was successfully updated.' }
        format.json { render :show, status: :ok, location: @playtime }
      else
        format.html { render :edit }
        format.json { render json: @playtime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /playtimes/1
  # DELETE /playtimes/1.json
  def destroy
    @playtime.destroy
    respond_to do |format|
      format.html { redirect_to playtimes_url, notice: 'Playtime was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def save_draft
    @playtime = Playtime.new(playtime_params)
    @playtime.user_id = current_user.id
    @playtime.movie_id = @movie.id
    @playtime.save
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playtime
      @playtime = Playtime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def playtime_params
      params.require(:playtime).permit(:userid, :movieid, :movie_time)
    end
end
