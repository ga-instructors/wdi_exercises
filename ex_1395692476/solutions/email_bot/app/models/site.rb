class Site < ActiveRecord::Base
	has_many :people, through: :appearances
	has_many :appearances 
end
