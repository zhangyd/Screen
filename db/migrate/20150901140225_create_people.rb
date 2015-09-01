class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :major
      t.date :graduation
      t.text :description

      t.timestamps
    end
  end
end
