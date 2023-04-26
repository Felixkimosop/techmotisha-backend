class CategoriesController < ApplicationController
 # skip_before_action :authorize, only: [:create, :index, :update]

  # GET /categories
  def index
     categories = Category.all

    render json:  categories
  end
  # GET /categories/:id
  def show
    category = Category.find(params[:id])
    render json: category
  end


  # POST /categories
  def create
     category = Category.new(category_params)

    if  category.save
      render json:  category, status: :created, location:  category
    else
      render json:  category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /categories/1
  def update
    category = Category.find(params[:id])
    if  category.update(category_params)
      render json:  category
    else
      render json:  category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /categories/1
  def destroy
    category = Category.find(params[:id])
     category.destroy
     head :no_content
  end

  private
     # Only allow a list of trusted parameters through.
    def category_params
      params.permit(:name)
    end
end
