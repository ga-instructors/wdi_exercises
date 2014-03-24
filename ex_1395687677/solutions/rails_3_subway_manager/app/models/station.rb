class Station < ActiveRecord::Base
  attr_accessible :address
  has_and_belongs_to_many :subway_lines
end
