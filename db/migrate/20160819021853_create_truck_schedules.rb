class CreateTruckSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :truck_schedules do |t|
      t.string :truck_id, :null => false, :references => [:truck, :id]
      t.string :truck_name
      t.string :month
      t.string :week_day
      t.string :date_number
      t.string :time
      t.string :location
      t.timestamp
    end
  end
end