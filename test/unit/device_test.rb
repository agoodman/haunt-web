require 'test_helper'

class DeviceTest < ActiveSupport::TestCase

  should validate_presence_of :token
  should validate_presence_of :lat
  should validate_presence_of :lng
  should validate_uniqueness_of :token
  
end
