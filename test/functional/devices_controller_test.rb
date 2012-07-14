require 'test_helper'

class DevicesControllerTest < ActionController::TestCase

  context "on post create" do
    setup do
      @device_count = Device.count
      post :create, format: :json, device: FactoryGirl.attributes_for(:device)
    end
    should respond_with :created
    should "increase number of devices by 1" do
      assert_equal(@device_count+1,Device.count)
    end
  end
  
  context "on get show" do
    setup do
      @device = FactoryGirl.create(:device)
      get :show, format: :json, id: @device.to_param
    end
    should respond_with :success
  end
  
  context "on put update" do
    setup do
      @device = FactoryGirl.create(:device)
      put :update, format: :json, id: @device.to_param, device: FactoryGirl.attributes_for(:device)
    end
    should respond_with :no_content
  end
  
  context "on delete destroy" do
    setup do
      @device = FactoryGirl.create(:device)
      delete :destroy, format: :json, id: @device.to_param
    end
    should respond_with :success
  end

end
