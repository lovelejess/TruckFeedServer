# Truck.create!
# TruckSchedule.create!

truck_list = [
    [ 'The Spot', 'Fresh, made-to-order sandwiches', 'the_spot.jpg' ],
    [ 'The Outside Scoop', 'Ice Cream', 'outside_scoop.jpg' ]
]

truck_schedule_list = [
    [1, 'The Outside Scoop', '05/06/17', '2:00PM', '4:00PM', 'Sculpture Garden Park', '1330 Grand Ave', 'Des Moines, IA' ],
    [1, 'The Outside Scoop', '05/11/17', '4:00PM', '9:00PM', '80/35 Festival', '1330 Grand Ave', 'Des Moines, IA'],
    [2, 'The Spot', '05/11/17', '12:00PM', '2:00PM', 'Western Gateway Park', '1330 Grand Ave', 'Des Moines, IA'],
    [2, 'The Spot', '05/12/17', '4:00PM', '5:00PM', '515 Brewery', '7700 UNIVERSITY AVE', 'CLIVE, IA']
    ]

truck_list.each do |name, description_type, image|
  Trucks.create(name: name, description_type: description_type, image_url: image )
end

truck_schedule_list.each do |truck_id, truck_name, date, start_time, end_time, location, street_address, city_state|
    TruckSchedules.create(truck_id: truck_id, truck_name: truck_name, date: date, start_time: start_time, end_time: end_time, location: location, street_address: street_address, city_state: city_state)
end

