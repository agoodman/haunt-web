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
  
  context "on get index" do
    setup do
      @device = FactoryGirl.create(:device)
      @waypoint = FactoryGirl.create(:waypoint, device: @device)
      get :index, format: :json, device_id: @device.to_param
    end
    should respond_with :success
    should "return only waypoints for the given device" do
      assert_same_elements(assigns(:waypoints),@device.waypoints)
    end
  end

end
