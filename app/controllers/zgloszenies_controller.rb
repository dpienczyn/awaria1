class ZgloszeniesController < ApplicationController
  before_action :set_zgloszeny, only: [:show, :edit, :update, :destroy]

  # GET /zgloszenies
  # GET /zgloszenies.json
  def index
    @zgloszenies = Zgloszenie.where("nazwa_urzadzenia ILIKE ?", "%#{params[:search]}%")
  end

  # GET /zgloszenies/1
  # GET /zgloszenies/1.json
  def show
  end

  # GET /zgloszenies/new
  def new
    @zgloszeny = Zgloszenie.new
  end

  # GET /zgloszenies/1/edit
  def edit
  end

  # POST /zgloszenies
  # POST /zgloszenies.json
  def create
    @zgloszeny = Zgloszenie.new(zgloszeny_params)

    respond_to do |format|
      if @zgloszeny.save
        format.html { redirect_to @zgloszeny, notice: 'Zgloszenie was successfully created.' }
        format.json { render :show, status: :created, location: @zgloszeny }
      else
        format.html { render :new }
        format.json { render json: @zgloszeny.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zgloszenies/1
  # PATCH/PUT /zgloszenies/1.json
  def update
    respond_to do |format|
      if @zgloszeny.update(zgloszeny_params)
        format.html { redirect_to @zgloszeny, notice: 'Zgloszenie was successfully updated.' }
        format.json { render :show, status: :ok, location: @zgloszeny }
      else
        format.html { render :edit }
        format.json { render json: @zgloszeny.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zgloszenies/1
  # DELETE /zgloszenies/1.json
  def destroy
    @zgloszeny.destroy
    respond_to do |format|
      format.html { redirect_to zgloszenies_url, notice: 'Zgloszenie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zgloszeny
      @zgloszeny = Zgloszenie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zgloszeny_params
      params.require(:zgloszenie).permit(:klient_id, :pracownik_id, :dzial_id, :priorytet, :status, :data_zgloszenia, :data_naprawy, :opis_uszkodzenia, :nazwa_urzadzenia, :user_id, :wysylka)
    end
end
