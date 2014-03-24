class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name
      t.string :abrv
      t.string :capital
	    t.timestamps
    end
  end
end
