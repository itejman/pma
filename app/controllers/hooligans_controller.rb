class HooligansController < ApplicationController
  before_action :set_hooligan, only: [:show, :edit, :update, :destroy]

  # GET /hooligans
  # GET /hooligans.json
  def index
    @hooligans = Hooligan.all
  end

  # GET /hooligans/1
  # GET /hooligans/1.json
  def show
  end

  # GET /hooligans/new
  def new
    @hooligan = Hooligan.new
  end

  # GET /hooligans/1/edit
  def edit
  end

  # POST /hooligans
  # POST /hooligans.json
  def create
    @hooligan = Hooligan.new(hooligan_params)

    respond_to do |format|
      if @hooligan.save
        format.html { redirect_to @hooligan, notice: 'Hooligan was successfully created.' }
        format.json { render :show, status: :created, location: @hooligan }
      else
        format.html { render :new }
        format.json { render json: @hooligan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hooligans/1
  # PATCH/PUT /hooligans/1.json
  def update
    respond_to do |format|
      if @hooligan.update(hooligan_params)
        format.html { redirect_to @hooligan, notice: 'Hooligan was successfully updated.' }
        format.json { render :show, status: :ok, location: @hooligan }
      else
        format.html { render :edit }
        format.json { render json: @hooligan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hooligans/1
  # DELETE /hooligans/1.json
  def destroy
    @hooligan.destroy
    respond_to do |format|
      format.html { redirect_to hooligans_url, notice: 'Hooligan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hooligan
      @hooligan = Hooligan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hooligan_params
      params.require(:hooligan).permit(:first_name, :last_name, :pesel)
    end
end
