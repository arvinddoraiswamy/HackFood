class AllfoodsController < ApplicationController
  def index
    @allfoods= Allfood.all
  end

  def show
    @allfood= Allfood.find(params[:id])
  end

  def new
    @allfood= Allfood.new
  end

  def create
    @allfood= Allfood.new(permit_params)
    @allfood.save
    redirect_to @allfood
  end

  def edit
    @allfood= Allfood.find(params[:id])
  end

  def update
    @allfood= Allfood.find(params[:id])

    if @allfood.update(permit_params)
        redirect_to @allfood
    else
        render 'edit'
    end
  end

  def destroy
    @allfood= Allfood.find(params[:id])
    @allfood.destroy
    redirect_to allfoods_path
  end

  private
  def permit_params
      params.require(:allfood).permit(:item, :foodgroup, :vitamin, :mineral, :otherelements)
  end
end
