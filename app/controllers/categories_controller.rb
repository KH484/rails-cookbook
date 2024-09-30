class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @categories = Category.new(category_params)
    if @category.save
      redirect_to category_path(@category) # rails knows to pick the id
    else
      render :new, status: :unprocessable_entity # an error message to the user why it didn't save
    end
  end

  def destroy
    @categories = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path status: :see_other
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
