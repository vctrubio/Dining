json.array! @restaurant do |restaurant|
  json.extract! restaurant, :name, :location
end
