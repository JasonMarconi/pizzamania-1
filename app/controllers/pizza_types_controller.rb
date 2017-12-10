class PizzaTypesController < ApplicationController
  before_action :set_pizza_type, only: [:show, :edit, :update, :destroy]

  # GET /pizza_types
  # GET /pizza_types.json
  def index
    @pizza_types = PizzaType.all
  end

  # GET /pizza_types/1
  # GET /pizza_types/1.json
  def show
  end

  # GET /pizza_types/new
  def new
    @pizza_type = PizzaType.new
  end

  # GET /pizza_types/1/edit
  def edit
  end

  # POST /pizza_types
  # POST /pizza_types.json
  def create
    @pizza_type = PizzaType.new(pizza_type_params)

    respond_to do |format|
      if @pizza_type.save
        format.html { redirect_to @pizza_type, notice: 'Pizza type was successfully created.' }
        format.json { render :show, status: :created, location: @pizza_type }
      else
        format.html { render :new }
        format.json { render json: @pizza_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pizza_types/1
  # PATCH/PUT /pizza_types/1.json
  def update
    respond_to do |format|
      if @pizza_type.update(pizza_type_params)
        format.html { redirect_to @pizza_type, notice: 'Pizza type was successfully updated.' }
        format.json { render :show, status: :ok, location: @pizza_type }
      else
        format.html { render :edit }
        format.json { render json: @pizza_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pizza_types/1
  # DELETE /pizza_types/1.json
  def destroy
    @pizza_type.destroy
    respond_to do |format|
      format.html { redirect_to pizza_types_url, notice: 'Pizza type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pizza_type
      @pizza_type = PizzaType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pizza_type_params
      params.require(:pizza_type).permit(:name)
    end
end
