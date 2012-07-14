class Device < ActiveRecord::Base

  validates_presence_of :token, :lat, :lng
  validates_uniqueness_of :token
  
  attr_accessible :lat, :lng, :token
  
end
