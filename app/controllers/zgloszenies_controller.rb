class ZgloszeniesController < ApplicationController
  before_action :set_zgloszeny, only: [:show, :edit, :update, :destroy, :print]

  # GET /zgloszenies
  # GET /zgloszenies.json
  def index
    @zgloszenies = Zgloszenie.where("nazwa_urzadzenia ILIKE ? OR priorytet ILIKE ? OR status ILIKE ? ", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
    @zgloszenia = Zgloszenie.all
    respond_to do |format|
      format.html
      format.pdf do
        pdf = ZgloszenieListaPdf.new(@zgloszenia)
        send_data pdf.render, filename: "zgloszenia.pdf",
                              type: "application/pdf",
                              description: "inline"
      end
    end
  end

  # GET /zgloszenies/1
  # GET /zgloszenies/1.json
  def show
    @zgloszenie = Zgloszenie.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        pdf = ZgloszenieKartaPdf.new(@zgloszenie)
        send_data pdf.render, filename: "zgloszenie_#{@zgloszenie.id}.pdf",
                              type: "application/pdf",
                              description: "inline"
      end
    end
  end

  def print
    @zgloszenie = Zgloszenie.find(params[:id])
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
      params.require(:zgloszenie).permit(:dzial_id, :data_zgloszenia, :opis_uszkodzenia, :nazwa_urzadzenia, :user_id, :wysylka, :priorytet, :status, :data_naprawy, :pracownikid)
    end
end
