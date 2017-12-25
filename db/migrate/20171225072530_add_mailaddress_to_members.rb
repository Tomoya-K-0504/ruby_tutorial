class AddMailaddressToMembers < ActiveRecord::Migration[5.1]
  def change
  	add_column :members, :mailaddress, :string
  end
end
