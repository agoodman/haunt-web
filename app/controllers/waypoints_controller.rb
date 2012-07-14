class WaypointsController < ApplicationController
  
  before_filter :assign_device
  
  respond_to :json
  
  # GET /devices/1/waypoints.json
  def index
    respond_with(@waypoints = @device.waypoints)
  end
  
  # POST /devices/1/waypoints.json
  def create
    @waypoint = Waypoint.new(params[:waypoint])
    @waypoint.device_id = @device.id

    @waypoint.save
    respond_with(@device,@waypoint)
  end
  
  def assign_device
    @device = Device.find_by_token(params[:device_id])
  end
  
end
