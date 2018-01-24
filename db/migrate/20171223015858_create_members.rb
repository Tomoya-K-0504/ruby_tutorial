class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :name
      t.string :team
      t.string :lq

      t.timestamps
    end
  end
end
