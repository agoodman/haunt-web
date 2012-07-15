class AddMeasuredAtToWaypoints < ActiveRecord::Migration
  def change
    add_column :waypoints, :measured_at, :datetime
    Waypoint.find_each {|wp| wp.update_attributes(measured_at: wp.created_at)}
  end
end
