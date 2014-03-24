class Card < ActiveRecord::Base
  attr_accessible :num_value, :suit, :value
end
