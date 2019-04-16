json.array! @retailers.each do |retailer|
  json.partial! "retailer.json.jbuilder", retailer: retailer
end