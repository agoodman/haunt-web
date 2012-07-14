class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :token
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
