class CreateMuscleGroups < ActiveRecord::Migration
  def change
    create_table :muscle_groups do |t|
      t.string :name
      t.text :description
      t.integer :exercise_id

      t.timestamps

    end
  end
end
