class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
  end

  def show
    @exercise = Exercise.find(params[:id])
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new
    @exercise.name = params[:name]
    @exercise.picture = params[:picture]
    @exercise.time = params[:time]
    @exercise.calories_consumed = params[:calories_consumed]
    @exercise.instructions = params[:instructions]
    @exercise.muscle_group_id = params[:muscle_group_id]

    if @exercise.save
      redirect_to "/exercises", :notice => "Exercise created successfully."
    else
      render 'new'
    end
  end

  def edit
    @exercise = Exercise.find(params[:id])
  end

  def update
    @exercise = Exercise.find(params[:id])

    @exercise.name = params[:name]
    @exercise.picture = params[:picture]
    @exercise.time = params[:time]
    @exercise.calories_consumed = params[:calories_consumed]
    @exercise.instructions = params[:instructions]
    @exercise.muscle_group_id = params[:muscle_group_id]

    if @exercise.save
      redirect_to "/exercises", :notice => "Exercise updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @exercise = Exercise.find(params[:id])

    @exercise.destroy

    redirect_to "/exercises", :notice => "Exercise deleted."
  end
end
