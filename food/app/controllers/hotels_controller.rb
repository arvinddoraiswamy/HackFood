class HotelsController < ApplicationController
  def index
    @hotels= Hotel.all
  end

  def show
    @hotel= Hotel.find(params[:id])
  end

  def new
    @hotel= Hotel.new
  end

  def create
    @hotel= Hotel.new(permit_params)
    @hotel.save
    redirect_to @hotel
  end

  def edit
    @hotel= Hotel.find(params[:id])
  end

  def update
    @hotel= Hotel.find(params[:id])
    if @hotel.update(permit_params)
        redirect_to @hotel
    else
        render 'edit'
    end
  end

  def destroy
    @hotel= Hotel.find(params[:id])
    @hotel.destroy
    redirect_to hotels_path
  end

  private
  def permit_params
      params.require(:hotel).permit(:name, :city, :state)
  end
end
