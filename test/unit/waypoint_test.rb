require 'test_helper'

class WaypointTest < ActiveSupport::TestCase

  should belong_to :device
  should validate_presence_of :device_id
  should validate_presence_of :lat
  should validate_presence_of :lng
  should validate_presence_of :measured_at
  
end
