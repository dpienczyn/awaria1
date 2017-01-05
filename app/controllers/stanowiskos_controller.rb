class StanowiskosController < ApplicationController
  before_action :set_stanowisko, only: [:show, :edit, :update, :destroy]

  # GET /stanowiskos
  # GET /stanowiskos.json
  def index
    @stanowiskos = Stanowisko.where("nazwa ILIKE ?", "%#{params[:search]}%")
  end

  # GET /stanowiskos/1
  # GET /stanowiskos/1.json
  def show
  end

  # GET /stanowiskos/new
  def new
    @stanowisko = Stanowisko.new
  end

  # GET /stanowiskos/1/edit
  def edit
  end

  # POST /stanowiskos
  # POST /stanowiskos.json
  def create
    @stanowisko = Stanowisko.new(stanowisko_params)

    respond_to do |format|
      if @stanowisko.save
        format.html { redirect_to @stanowisko, notice: 'Stanowisko zostało pomyślnie dodane.' }
        format.json { render :show, status: :created, location: @stanowisko }
      else
        format.html { render :new }
        format.json { render json: @stanowisko.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stanowiskos/1
  # PATCH/PUT /stanowiskos/1.json
  def update
    respond_to do |format|
      if @stanowisko.update(stanowisko_params)
        format.html { redirect_to @stanowisko, notice: 'Edycja zakończyła się sukcesem.' }
        format.json { render :show, status: :ok, location: @stanowisko }
      else
        format.html { render :edit }
        format.json { render json: @stanowisko.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stanowiskos/1
  # DELETE /stanowiskos/1.json
  def destroy
    @stanowisko.destroy
    respond_to do |format|
      format.html { redirect_to stanowiskos_url, notice: 'Stanowisko zostało usunięte.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stanowisko
      @stanowisko = Stanowisko.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stanowisko_params
      params.require(:stanowisko).permit(:nazwa)
    end
end
