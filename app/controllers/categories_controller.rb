class CategoriesController < ApplicationController

    def index
        @categories = Category.all 
        render json: @categories
    end

    def show
        @category = Category.find_by(id: params[:id])
    end

    def create
        category = Category.new(category_params)
    end


    private

        def category_params
            params.require(:category).permit(:name)
        end
end
