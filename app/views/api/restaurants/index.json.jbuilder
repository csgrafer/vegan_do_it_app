json.array! @restaurants.each do |restaurant|
  json.partial! "restaurant.json.jbuilder", restaurant: restaurant
end