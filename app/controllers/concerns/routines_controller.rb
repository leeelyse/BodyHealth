class RoutinesController < ApplicationController

  def index
    @exercises = Exercise.all
    @musclegroups = MuscleGroup.all
  end

  def show
    @exercise = Exercise.where(musclegroup_id = params[:exercise]).first
end




  def new
    @exercise = Exercise.new
  end

end
