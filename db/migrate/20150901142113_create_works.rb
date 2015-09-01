class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
    	t.integer :project_id
    	t.integer :person_id

    	t.timestamps
    end
  end
end
