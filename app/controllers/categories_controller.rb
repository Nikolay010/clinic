class CategoriesController < ApplicationController
  load_and_authorize_resource
  before_action :set_categories, only: [:show]

  def index
    @categories = Category.all
    authorize! :read, @categories
  end

  def new
    @category = Category.new
    authorize! :create, @category
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to doctors_path, notice: "Category successfully created"
    else
      render :new
    end

    authorize! :create, @category
  end

  def show
    @category.name
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

  def set_categories
    @category = Category.find(params[:id])
  end
end
