class AddProjectRefToMembers < ActiveRecord::Migration[5.1]
  def change
    add_reference :members, :project, foreign_key: true
  end
end
