class RoutinesController < ApplicationController

  def index
    @exercises = Exercise.all
    @musclegroups = MuscleGroup.all
  end

  def show
    @exercise = Exercise.find(params[:exercise])
end



  def new
    @exercise = Exercise.new
  end

end
