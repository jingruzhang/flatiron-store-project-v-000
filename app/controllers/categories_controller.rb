class CategoriesController < ApplicationController

  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def show
  end

  private

  def category_params
    params.required(:category).permit(:title)
  end

  def set_category
    @category = Category.find_by(id: params[:id])
  end
end
