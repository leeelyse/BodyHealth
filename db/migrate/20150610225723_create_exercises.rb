class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :picture
      t.time :time
      t.integer :calories_consumed
      t.text :instructions
      t.string :muscle_group_id

      t.timestamps

    end
  end
end
