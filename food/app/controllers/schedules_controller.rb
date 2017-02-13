class SchedulesController < ApplicationController
  def generate_weekly_schedule
    @date= Date.today.to_s
    @fruits= Allfood.where(foodgroup: 'fruit').limit(5).order("RANDOM()")
    @veggies= Allfood.where(foodgroup: 'vegetable').limit(4).order("RANDOM()")
    @proteins= Allfood.where(foodgroup: 'protein').limit(3).order("RANDOM()")
    @carbs= Allfood.where(foodgroup: 'carbohydrate').limit(2).order("RANDOM()")
    @junk= Allfood.where(foodgroup: 'junk').limit(1).order("RANDOM()")

    #http://api.rubyonrails.org/classes/ActionController/Parameters.html
    params = ActionController::Parameters.new({
        schedule: {
            date: @date,
            fruit1: @fruits[0].item,
            fruit2: @fruits[1].item,
            fruit3: @fruits[2].item,
            fruit4: @fruits[3].item,
            fruit5: @fruits[4].item,
            veggie1: @veggies[0].item,
            veggie2: @veggies[1].item,
            veggie3: @veggies[2].item,
            veggie4: @veggies[3].item,
            protein1: @proteins[0].item,
            protein2: @proteins[1].item,
            protein3: @proteins[2].item,
            carbs1: @carbs[0].item,
            carbs2: @carbs[1].item,
            junk: @junk[0].item
      }
    })
    permitted= params.require(:schedule).permit(:date, 
                                       :fruit1, :fruit2, :fruit3, :fruit4, :fruit5,
                                       :veggie1, :veggie2, :veggie3, :veggie4,
                                       :protein1, :protein2, :protein3,
                                       :carbs1, :carbs2,
                                       :junk
                                      )
    @schedule= Schedule.new(permitted)
    @schedule.save
    redirect_to @schedule
  end

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
