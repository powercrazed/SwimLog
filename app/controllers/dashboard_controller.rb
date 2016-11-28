class DashboardController < ApplicationController

  # GET /
  def index
    @swims = Swim.all
    @swims25 = Swim.joins(:pool).where("length = 25")
    @swims50 = Swim.joins(:pool).where("length = 50")
  end
end
