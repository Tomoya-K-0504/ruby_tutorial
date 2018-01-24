class RemoveProgectIdFromMember < ActiveRecord::Migration[5.1]
  def change
    remove_column :members, :project_id, :integer
    # add_reference :members, :project, foreign_key: true
  end
end
