# Truck.create!
# TruckSchedule.create!

truck_list = [
    [ 'The Spot', 'Fresh, made-to-order sandwiches', 'the_spot.jpg' ],
    [ 'The Outside Scoop', 'Ice Cream', 'outside_scoop.jpg' ]
]

truck_schedule_list = [
    [1, 'The Outside Scoop', 'February', 'Sunday', '3', '2:00PM', 'Sculpture Garden Park' ],
    [1, 'The Outside Scoop', 'February', 'Sunday','3', '4:00PM', 'Festival'],
    [2, 'The Spot','February', 'Monday', '7', '4:00PM', 'Western Gateway Park'],
    [2, 'The Spot','February', 'Monday', '7', '9:00PM', '515 Brewery']
    ]

truck_list.each do |name, description_type, image|
  Trucks.create(name: name, description_type: description_type, image_url: image )
end

truck_schedule_list.each do |truck_id, truck_name, month, week_day, date_number, time, location|
    TruckSchedules.create(truck_id: truck_id, truck_name: truck_name, month: month, week_day: week_day, date_number: date_number, time: time, location: location)
end

