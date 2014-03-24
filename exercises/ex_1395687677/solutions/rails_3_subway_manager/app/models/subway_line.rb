class SubwayLine < ActiveRecord::Base
  attr_accessible :color, :name
  has_and_belongs_to_many :stations
end
