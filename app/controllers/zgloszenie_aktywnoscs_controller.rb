class ZgloszenieAktywnoscsController < ApplicationController
  before_action :set_zgloszenie_aktywnosc, only: [:show, :edit, :update, :destroy]

  # GET /zgloszenie_aktywnoscs
  # GET /zgloszenie_aktywnoscs.json
  def index
    @zgloszenie_aktywnoscs = ZgloszenieAktywnosc.all
  end

  # GET /zgloszenie_aktywnoscs/1
  # GET /zgloszenie_aktywnoscs/1.json
  def show
  end

  # GET /zgloszenie_aktywnoscs/new
  def new
    @zgloszenie_aktywnosc = ZgloszenieAktywnosc.new
  end

  # GET /zgloszenie_aktywnoscs/1/edit
  def edit
  end

  # POST /zgloszenie_aktywnoscs
  # POST /zgloszenie_aktywnoscs.json
  def create
    @zgloszenie_aktywnosc = ZgloszenieAktywnosc.new(zgloszenie_aktywnosc_params)

    respond_to do |format|
      if @zgloszenie_aktywnosc.save
        format.html { redirect_to Zgloszenie, notice: 'Dodano notatkę.' }
        format.json { render :show, status: :created, location: @zgloszenie_aktywnosc }
      else
        format.html { render :new }
        format.json { render json: Zgloszenie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zgloszenie_aktywnoscs/1
  # PATCH/PUT /zgloszenie_aktywnoscs/1.json
  def update
    respond_to do |format|
      if @zgloszenie_aktywnosc.update(zgloszenie_aktywnosc_params)
        format.html { redirect_to @zgloszenie_aktywnosc, notice: 'Poprawiono notatkę.' }
        format.json { render :show, status: :ok, location: @zgloszenie_aktywnosc }
      else
        format.html { render :edit }
        format.json { render json: @zgloszenie_aktywnosc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zgloszenie_aktywnoscs/1
  # DELETE /zgloszenie_aktywnoscs/1.json
  def destroy
    @zgloszenie_aktywnosc.destroy
    respond_to do |format|
      format.html { redirect_to zgloszenie_aktywnoscs_url, notice: 'Zgloszenie aktywnosc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zgloszenie_aktywnosc
      @zgloszenie_aktywnosc = ZgloszenieAktywnosc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zgloszenie_aktywnosc_params
      params.require(:zgloszenie_aktywnosc).permit(:zgloszenie_id, :tresc, :user_id)
    end
end
