class KlientsController < ApplicationController
  before_action :set_klient, only: [:show, :edit, :update, :destroy]

  # GET /klients
  # GET /klients.json
  def index
    @klients = Klient.all
  end

  # GET /klients/1
  # GET /klients/1.json
  def show
  end

  # GET /klients/new
  def new
    @klient = Klient.new
  end

  # GET /klients/1/edit
  def edit
  end

  # POST /klients
  # POST /klients.json
  def create
    @klient = Klient.new(klient_params)

    respond_to do |format|
      if @klient.save
        format.html { redirect_to @klient, notice: 'Klient was successfully created.' }
        format.json { render :show, status: :created, location: @klient }
      else
        format.html { render :new }
        format.json { render json: @klient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /klients/1
  # PATCH/PUT /klients/1.json
  def update
    respond_to do |format|
      if @klient.update(klient_params)
        format.html { redirect_to @klient, notice: 'Klient was successfully updated.' }
        format.json { render :show, status: :ok, location: @klient }
      else
        format.html { render :edit }
        format.json { render json: @klient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /klients/1
  # DELETE /klients/1.json
  def destroy
    @klient.destroy
    respond_to do |format|
      format.html { redirect_to klients_url, notice: 'Klient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_klient
      @klient = Klient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def klient_params
      params.require(:klient).permit(:nazwa, :nip, :kod_pocztowy, :poczta, :adres, :telefon, :email)
    end
end
