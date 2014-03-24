class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :address
      t.integer :zip
      t.integer :state_id
	     t.timestamps
    end
  end
end
