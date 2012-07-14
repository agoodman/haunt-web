class Waypoint < ActiveRecord::Base
  
  belongs_to :device
  
  validates_presence_of :device_id, :lat, :lng
  
  attr_accessible :lat, :lng
  
end
