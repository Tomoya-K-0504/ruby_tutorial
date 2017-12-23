class AddLqToMember < ActiveRecord::Migration[5.1]
  def change
  	add_column :members, :profile, :text
  end
end
