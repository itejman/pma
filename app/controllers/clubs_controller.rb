class ClubsController < ApplicationController
  before_action :set_club, only: [:show, :edit, :update, :destroy]

  # GET /clubs
  # GET /clubs.json
  def index
    @clubs = Club.all
  end

  # GET /clubs/1
  # GET /clubs/1.json
  def show
  end

  # GET /clubs/new
  def new
    @club = Club.new
    @leagues = League.all_club_name_with_ids
    @coaches = Coach.all_coach_name_with_ids
    @stadiums = Stadium.all_stadnium_name_with_ids
    @sponsors = Sponsor.all_sponsor_name_with_ids
  end

  # GET /clubs/1/edit
  def edit
    @leagues = League.all_club_name_with_ids
    @coaches = Coach.all_coach_name_with_ids
    @stadiums = Stadium.all_stadnium_name_with_ids
    @sponsors = Sponsor.all_sponsor_name_with_ids
  end

  # POST /clubs
  # POST /clubs.json
  def create
    @club = Club.new(club_params)
    @leagues = League.all_club_name_with_ids
    @coaches = Coach.all_coach_name_with_ids
    @stadiums = Stadium.all_stadnium_name_with_ids
    @sponsors = Sponsor.all_sponsor_name_with_ids
    
    respond_to do |format|
      if @club.save
        format.html { redirect_to @club, notice: 'Dodano nowy klub do listy!' }
        format.json { render :show, status: :created, location: @club }
      else
        format.html { render :new }
        format.json { render json: @club.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clubs/1
  # PATCH/PUT /clubs/1.json
  def update
    respond_to do |format|
      if @club.update(club_params)
        format.html { redirect_to @club, notice: 'Dane zostały poprawnie zapisane' }
        format.json { render :show, status: :ok, location: @club }
      else
        format.html { render :edit }
        format.json { render json: @club.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clubs/1
  # DELETE /clubs/1.json
  def destroy
    @club.destroy
    respond_to do |format|
      format.html { redirect_to clubs_url, notice: 'Klub został usunięty z listy' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_club
      @club = Club.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def club_params
      params.require(:club).permit(:name, :address, :start_year, :league_id, :coach_id, :stadium_id, :sponsor_id)
    end
end
