class Complaint < ActiveRecord::Base
  attr_accessible :descriptor, :address, :longitude, :latitude, :zip
end
