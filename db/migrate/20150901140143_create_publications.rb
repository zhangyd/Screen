class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.integer :project_id
      t.string :title
      t.string :link

      t.timestamps
    end
  end
end
