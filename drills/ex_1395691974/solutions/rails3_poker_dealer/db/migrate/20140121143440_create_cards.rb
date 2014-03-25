class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :suit
      t.string :value
      t.integer :num_value

      t.timestamps
    end
  end
end
