class CategoriesController < ApplicationController
  before_action :redirect
  skip_before_action :redirect, only: [:splash]
  before_action :set_category, only: %i[show]

  def index
    @categories = Category.includes(:entities).all
  end

  def show
    @entities = @category.entities.order(created_at: :desc)
  end

  def new
    @category = Category.new
  end

  def create
    @category = current_user.categories.new(category_params)

    if @category.save
      redirect_to categories_path, notice: 'Category was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def splash
    redirect_to categories_path if user_signed_in?
  end

  private

  def redirect
    redirect_to root_path unless user_signed_in?
  end

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
