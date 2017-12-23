class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
    	t.string :name
    	t.string :kgi
    	t.string :kpi
    	t.string :vision
    	t.string :mission
    	t.string :members
    end
  end
end
