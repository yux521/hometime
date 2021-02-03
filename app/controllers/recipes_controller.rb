class RecipesController < ApplicationController
  before_action :set_recipe, only: [:edit, :update, :show]
  before_action :authenticate_user!, only: [:new, :edit, :update]

  def index
    @recipes = Recipe.includes(:user).order('created_at DESC')
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.valid?
      @recipe.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    recipe = Recipe.find(params[:id])
    if current_user.id == recipe.user_id
      recipe.destroy
      redirect_to root_path
    else
      render :edit
    end
  end

  def edit
    redirect_to root_path if current_user.id != @recipe.user.id
  end

  def update
    @recipe.update(recipe_params) if current_user.id == @recipe.user_id
    if @recipe.valid?
      redirect_to recipe_path
    else
      render :edit
    end
  end

  def show
    @recipes = Recipe.includes(:user).order('created_at DESC')
    @comment = Comment.new
    @comments = @recipe.comments.includes(:user)
  end

  def search
    @recipes = Recipe.search(params[:keyword]).order('created_at DESC')
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:title, :guideline_id, :memo, :ingredient_2, :ingredient_3, :ingredient_4, :ingredient_5,
                                   :ingredient_6, :ingredient_7, :ingredient_8, :ingredient_9, :ingredient_10, :cook_1, :cook_2, :cook_3, :cook_4, :cook_5, :cook_6, :cook_7, :cook_8, :cook_9, :cook_10, :ingredient_1, :image).merge(user_id: current_user.id)
  end
end
