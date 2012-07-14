require 'test_helper'

class WaypointsControllerTest < ActionController::TestCase

  context "on post create" do
    setup do
      @device = FactoryGirl.create(:device)
      @waypoint_count = Waypoint.count
      post :create, format: :json, device_id: @device.to_param, waypoint: FactoryGirl.attributes_for(:waypoint)
    end
    should respond_with :created
    should "increase number of waypoints by 1" do
      assert_equal(@waypoint_count+1,Waypoint.count)
    end
  end

end
