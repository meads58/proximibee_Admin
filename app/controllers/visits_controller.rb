class VisitsController < ApplicationController

  def create

    console.log(visit_params)
    Visit.create visit_params

  end

  def visit_params
    params.require(:visit).permit(:beacon_id, :timestamp)
  end

  def index
    @visits = Visit.all
  end

end
