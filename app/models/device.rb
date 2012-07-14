class Device < ActiveRecord::Base

  has_many :waypoints, dependent: :destroy
  
  validates_presence_of :token, :lat, :lng
  validates_uniqueness_of :token
  
  attr_accessible :lat, :lng, :token

  def to_param
    token
  end
  
end
