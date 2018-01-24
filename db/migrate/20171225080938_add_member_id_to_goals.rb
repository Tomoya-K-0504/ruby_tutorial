class AddMemberIdToGoals < ActiveRecord::Migration[5.1]
  def change
  	add_column :goals, :member_id, :integer
  end
end
