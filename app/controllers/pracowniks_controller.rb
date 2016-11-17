class PracowniksController < ApplicationController
  before_action :set_pracownik, only: [:show, :edit, :update, :destroy]

  # GET /pracowniks
  # GET /pracowniks.json
  def index
    @pracowniks = Pracownik.all
  end

  # GET /pracowniks/1
  # GET /pracowniks/1.json
  def show
  end

  # GET /pracowniks/new
  def new
    @pracownik = Pracownik.new
  end

  # GET /pracowniks/1/edit
  def edit
  end

  # POST /pracowniks
  # POST /pracowniks.json
  def create
    @pracownik = Pracownik.new(pracownik_params)

    respond_to do |format|
      if @pracownik.save
        format.html { redirect_to @pracownik, notice: 'Pracownik was successfully created.' }
        format.json { render :show, status: :created, location: @pracownik }
      else
        format.html { render :new }
        format.json { render json: @pracownik.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pracowniks/1
  # PATCH/PUT /pracowniks/1.json
  def update
    respond_to do |format|
      if @pracownik.update(pracownik_params)
        format.html { redirect_to @pracownik, notice: 'Pracownik was successfully updated.' }
        format.json { render :show, status: :ok, location: @pracownik }
      else
        format.html { render :edit }
        format.json { render json: @pracownik.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pracowniks/1
  # DELETE /pracowniks/1.json
  def destroy
    @pracownik.destroy
    respond_to do |format|
      format.html { redirect_to pracowniks_url, notice: 'Pracownik was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pracownik
      @pracownik = Pracownik.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pracownik_params
      params.require(:pracownik).permit(:stanowisko_id, :dzial_id, :nazwa, :stanowisko, :telefon, :email)
    end
end
