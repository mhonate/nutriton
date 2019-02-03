class CompoundsController < ApplicationController
  before_action :set_compound, only: [:show, :edit, :update, :destroy]

  # GET /compounds
  # GET /compounds.json
  def index
    @compounds = Compound.all
  end

  # GET /compounds/1
  # GET /compounds/1.json
  def show
  end

  # GET /compounds/new
  def new
    @compound = Compound.new
  end

  # GET /compounds/1/edit
  def edit
  end

  # POST /compounds
  # POST /compounds.json
  def create
    @compound = Compound.new(compound_params)

    respond_to do |format|
      if @compound.save
        format.html { redirect_to @compound, notice: 'Compound was successfully created.' }
        format.json { render :show, status: :created, location: @compound }
      else
        format.html { render :new }
        format.json { render json: @compound.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compounds/1
  # PATCH/PUT /compounds/1.json
  def update
    respond_to do |format|
      if @compound.update(compound_params)
        format.html { redirect_to @compound, notice: 'Compound was successfully updated.' }
        format.json { render :show, status: :ok, location: @compound }
      else
        format.html { render :edit }
        format.json { render json: @compound.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compounds/1
  # DELETE /compounds/1.json
  def destroy
    @compound.destroy
    respond_to do |format|
      format.html { redirect_to compounds_url, notice: 'Compound was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compound
      @compound = Compound.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compound_params
      params.require(:compound).permit(:food_id, :recipe_id, :grams)
    end
end
