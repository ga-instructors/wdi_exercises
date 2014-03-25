class CreateStationsSubwayLinesTable < ActiveRecord::Migration
  def change
  	create_table :stations_subway_lines, id: false do |t| 
  		t.integer :subway_line_id
  		t.integer :station_id
  	end
  end
end
