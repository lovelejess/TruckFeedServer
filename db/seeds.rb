# Truck.create!

truck_list = [
    [ 'The Spot', 'Fresh, made-to-order sandwiches', 'the_spot.jpg' ],
    [ 'The Outside Scoop', 'Ice Cream', 'outside_scoop.jpg' ]
]

truck_list.each do |name, description_type, image|
  Truck.create( name: name, description_type: description_type, image_url: image )
end
