class CreateWaypoints < ActiveRecord::Migration
  def change
    create_table :waypoints do |t|
      t.integer :device_id
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
