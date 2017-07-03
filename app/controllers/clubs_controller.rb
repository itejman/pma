class ClubsController < ApplicationController
  before_action :set_club, only: [:show, :edit, :update, :destroy]

  def index
    # dodatek do gem kaminari per() wyswietla ilosc wpisów na stronie
    @clubs = Club.page(params[:page]).per(8)
  end

  def show
    @players = Player.all_player_name_and_surname_with_ids
  end

  def new
    @club = Club.new
    @leagues = League.all_club_name_with_ids
    @coaches = Coach.all_coach_name_with_ids
    @stadiums = Stadium.all_stadnium_name_with_ids
    @sponsors = Sponsor.all_sponsor_name_with_ids
  end

  def edit
    @leagues = League.all_club_name_with_ids
    @coaches = Coach.all_coach_name_with_ids
    @stadiums = Stadium.all_stadnium_name_with_ids
    @sponsors = Sponsor.all_sponsor_name_with_ids
  end

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

  def destroy
    @club.destroy
    respond_to do |format|
      format.html { redirect_to clubs_url, notice: 'Klub został usunięty z listy' }
      format.json { head :no_content }
    end
  end

  private
    def set_club
      @club = Club.find(params[:id])
    end

    def club_params
      params.require(:club).permit(:name, :address, :start_year, :league_id, :coach_id, :stadium_id, :sponsor_id, :player_id)
    end
end
