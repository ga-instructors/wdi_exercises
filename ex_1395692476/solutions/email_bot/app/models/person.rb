class Person < ActiveRecord::Base
	has_many :sites, through: :appearances, uniq: true
	has_many :appearances 
end
