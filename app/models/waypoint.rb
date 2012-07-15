class Waypoint < ActiveRecord::Base
  
  belongs_to :device
  
  validates_presence_of :device_id, :lat, :lng, :measured_at
  
  attr_accessible :lat, :lng, :measured_at
  
end
