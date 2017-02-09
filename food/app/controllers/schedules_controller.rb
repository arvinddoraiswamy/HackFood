class SchedulesController < ApplicationController
  def index
    @schedules= Schedule.all
  end

  def show
    @schedule= Schedule.find(params[:id])
  end

  def new
    @schedule= Schedule.new
    @allfoods= Allfood.all
  end

  def create
    @schedule= Schedule.new(permit_params)
    @schedule.save
    redirect_to @schedule
  end

  def edit
    @schedule= Schedule.find(params[:id])
  end

  def update
    @schedule= Schedule.find(params[:id])
    if @schedule.update(permit_params)
        redirect_to @schedule
    else
        render 'edit'
    end
  end

  def destroy
    @schedule= Schedule.find(params[:id])
    @schedule.destroy
    redirect_to schedules_path
  end

  private
  def permit_params
      params.require(:schedule).permit(:date, :fruit1, :fruit2, :fruit3, :fruit4, :fruit5,
                                       :veggie1, :veggie2, :veggie3, :veggie4,
                                       :protein1, :protein2, :protein3,
                                       :carbs1, :carbs2,
                                       :junk
                                      )
  end
end
