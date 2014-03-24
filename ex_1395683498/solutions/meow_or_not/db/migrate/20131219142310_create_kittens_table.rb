class CreateKittensTable < ActiveRecord::Migration
  def up
  	create_table :kittens do |t| 
  		t.string :url
  		t.boolean :meow
  		t.timestamps
  	end
  end

  def down
  	drop_table :kittens
  end
end
