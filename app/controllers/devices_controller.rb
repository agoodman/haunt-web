class DevicesController < ApplicationController

  respond_to :json
  
  # GET /devices/1.json
  def show
    @device = Device.find(params[:id])
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
    @device = Device.find(params[:id])

    @device.update_attributes(params[:device])
    respond_with(@device)
  end

  # DELETE /devices/1.json
  def destroy
    @device = Device.find(params[:id])
    @device.destroy
    head :ok
  end

end
