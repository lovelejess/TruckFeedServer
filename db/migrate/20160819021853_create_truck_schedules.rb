class CreateTruckSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :truck_schedules do |t|
      t.string :truck_id
      t.string :truck_name, :null => false, :references => [:truck, :name]
      t.string :month
      t.string :week_day
      t.string :date_number
      t.string :time
      t.string :location
      t.timestamp
    end
  end
end