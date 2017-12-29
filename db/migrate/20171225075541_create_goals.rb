class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
    	t.string :title
    	t.text :description
    	t.integer :progress_value
    	t.integer :goal_value
      t.timestamps
    end
  end
end
