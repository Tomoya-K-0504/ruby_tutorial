class AddLqToMembers < ActiveRecord::Migration[5.1]
  def change
    add_column :members, :lq, :integer
  end
end
