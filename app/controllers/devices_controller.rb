class DevicesController < ApplicationController

  before_filter :assign_device, only: [ :show, :update, :destroy, :nearby ]
  
  respond_to :json
  
  def index
    @devices = Device.scoped.limit(10)
    respond_to do |format|
      format.html
    end
  end
  
  # GET /devices/1.json
  def show
    respond_with(@device)
  end

  # POST /devices.json
  def create
    @device = Device.new(params[:device])

    @device.save
    respond_with(@device)
  end

  # PUT /devices/1.json
  def update
    @device.update_attributes(params[:device])
    respond_with(@device)
  end

  # DELETE /devices/1.json
  def destroy
    @device.destroy
    head :ok
  end

  # GET /devices/1/nearby.json
  def nearby
    @device_count = Device.near(@device).count
    respond_to do |format|
      format.json { render json: { device_count: @device_count } }
    end
  end
  
  def assign_device
    @device = Device.find_by_token(params[:id])
  end
  
end
