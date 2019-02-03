class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :destroy]

  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = Recipe.all
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new
  end

  # GET /recipes/1/edit
  def edit
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = Recipe.new
    @recipe.user = current_user
    @recipe.finished = false
    @recipe.save!
    @food = Food.find(params[:food_id])
    @compound = Compound.new
    @compound.recipe = @recipe
    @compound.food = @food
    @compound.grams = 100
    @compound.save!

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to subcategory_foods_path(@food.subcategory),
                      notice: 'Receta creada, acceda al menú para finalizar la creación de la receta.' }
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update
    @recipe = Recipe.where(user:current_user).last
    @food = Food.find(params[:food_id])
    @compound = Compound.new
    @compound.recipe = @recipe
    @compound.food = @food
    @compound.grams = 0
    @compound.save!
    respond_to do |format|
      format.html { redirect_to subcategory_foods_path(@food.subcategory),
      notice: 'Compuesto añadido a la receta actual. acceda al menú para finalizar la creación de la receta.' }
      format.json { render :show, status: :ok, location: @recipe }
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    Compound.where(recipe: @recipe).destroy_all
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Receta eliminada.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params.require(:recipe).permit(:name)
    end
end
