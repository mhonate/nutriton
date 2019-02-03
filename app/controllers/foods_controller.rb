class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :edit, :update, :destroy]

  # GET /foods
  # GET /foods.json
  def index
    @foods = Food.all
  end

  # GET /foods/1
  # GET /foods/1.json
  def show
  end

  # GET /foods/new
  def new
    @food = Food.new
  end

  # GET /foods/1/edit
  def edit
  end

  # POST /foods
  # POST /foods.json
  def create
    @food = Food.new(food_params)

    respond_to do |format|
      if @food.save
        format.html { redirect_to @food, notice: 'Food was successfully created.' }
        format.json { render :show, status: :created, location: @food }
      else
        format.html { render :new }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foods/1
  # PATCH/PUT /foods/1.json
  def update
    respond_to do |format|
      if @food.update(food_params)
        format.html { redirect_to @food, notice: 'Food was successfully updated.' }
        format.json { render :show, status: :ok, location: @food }
      else
        format.html { render :edit }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foods/1
  # DELETE /foods/1.json
  def destroy
    @food.destroy
    respond_to do |format|
      format.html { redirect_to foods_url, notice: 'Food was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food
      @food = Food.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_params
      params.require(:food).permit(:name, :code, :portion, :grams, :homemade_portion, :specification, :value, :gross_weight, :net_weight, :humidity, :factor_atwater, :calories, :proteins, :carbohydrates, :dietary_fiber, :soluble_fiber, :insoluble_fiber, :lipids, :saturated_fatty_acids, :monounsaturated_fatty_acids, :polyunsaturated_fatty_acids, :cholesterol, :carotene, :retinol, :vitamin_a_total, :vitamin_b1_mg, :vitamin_b2_mg, :niacin, :vitamin_b4_mg, :pyridoxine, :cobalamin, :folates, :pantothenic_acid_mg, :vitamin_c_mg, :vitamin_e_mg, :calcium, :copper, :iron_mg, :magnesium_mg, :phosphorus_mg, :potassium_mg, :selenium_mg, :sodium_mg, :zinc_mg, :orac_index, :total_polyphenols, :nitrates, :nitrites, :other1, :other2, :other3, :subcategory_id, :source_id)
    end
end
