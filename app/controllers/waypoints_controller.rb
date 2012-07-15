class WaypointsController < ApplicationController
  
  before_filter :assign_device
  
  respond_to :json
  
  # GET /devices/1/waypoints.json
  def index
    @waypoints = Waypoint.where(device_id: @device.id).order('created_at desc')
    # respond_to do |format|
    #   format.json { render json: @waypoints }
    # end
    respond_with(@waypoints)
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
    if @device.nil?
      @device = Device.create(token: params[:device_id], lat: params[:waypoint][:lat], lng: params[:waypoint][:lng])
    end
  end
  
end
