class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :project_id
      t.string :headline
      t.text :content

      t.timestamps
    end
  end
end
