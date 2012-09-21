class Device < ActiveRecord::Base

  has_many :waypoints, dependent: :destroy
  
  validates_presence_of :token, :lat, :lng
  validates_uniqueness_of :token
  
  attr_accessible :lat, :lng, :token

  scope :near, lambda {|device| within(device,0.718)}
  scope :within, lambda {|device,radius| where('lat > ?',device.lat-radius).where('lat < ?',device.lat+radius).where('lng > ?',device.lng-radius).where('lng < ?',device.lng+radius)}

  def to_param
    token
  end
  
end
