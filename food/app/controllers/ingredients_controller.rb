class IngredientsController < ApplicationController
    def index
       @ingredients= Ingredient.all
    end

    def show
       @ingredient= Ingredient.find(params[:id])
    end

    def new
       @ingredient= Ingredient.new
    end

    def create
       @ingredient= Ingredient.new(permit_params)
       @ingredient.save
       redirect_to @ingredient
    end

    def edit
       @ingredient= Ingredient.find(params[:id])
    end

    def update
        @ingredient= Ingredient.find(params[:id])
        if @ingredient.update(permit_params)
            redirect_to @ingredient
        else
            render 'edit'
        end
    end

    def destroy
        @ingredient= Ingredient.find(params[:id])
        @ingredient.destroy
        redirect_to ingredients_path
    end

    private
    def permit_params
        params.require(:ingredient).permit(:name, :reasontoavoid)
    end
end
