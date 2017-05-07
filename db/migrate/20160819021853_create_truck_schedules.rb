class CreateTruckSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :truck_schedules do |t|
      t.string :truck_id
      t.string :truck_name, :null => false, :references => [:truck, :name]
      t.string :date
      t.string :start_time
      t.string :end_time
      t.string :location
      t.string :street_address
      t.string :city_state
      t.timestamp
    end
  end
end