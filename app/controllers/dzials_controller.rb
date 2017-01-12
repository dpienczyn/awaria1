class DzialsController < ApplicationController
  before_action :set_dzial, only: [:show, :edit, :update, :destroy]

  # GET /dzials
  # GET /dzials.json
  def index
    @dzials = Dzial.where("nazwa ILIKE ?", "%#{params[:search]}%")
    @dzials = Dzial.paginate(:page => params[:page], :per_page => 10)
  end

  # GET /dzials/1
  # GET /dzials/1.json
  def show
  end

  # GET /dzials/new
  def new
    @dzial = Dzial.new
  end

  # GET /dzials/1/edit
  def edit
  end

  # POST /dzials
  # POST /dzials.json
  def create
    @dzial = Dzial.new(dzial_params)

    respond_to do |format|
      if @dzial.save
        format.html { redirect_to @dzial, notice: 'Dział został pomyślnie dodany.' }
        format.json { render :show, status: :created, location: @dzial }
      else
        format.html { render :new }
        format.json { render json: @dzial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dzials/1
  # PATCH/PUT /dzials/1.json
  def update
    respond_to do |format|
      if @dzial.update(dzial_params)
        format.html { redirect_to @dzial, notice: 'Edycja zakończyła się sukcesem.' }
        format.json { render :show, status: :ok, location: @dzial }
      else
        format.html { render :edit }
        format.json { render json: @dzial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dzials/1
  # DELETE /dzials/1.json
  def destroy
    @dzial.destroy
    respond_to do |format|
      format.html { redirect_to dzials_url, notice: 'Dział został usunięty.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dzial
      @dzial = Dzial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dzial_params
      params.require(:dzial).permit(:nazwa)
    end
end
