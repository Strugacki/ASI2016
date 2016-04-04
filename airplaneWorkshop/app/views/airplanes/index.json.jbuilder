json.array!(@airplanes) do |airplane|
  json.extract! airplane, :id, :brand, :model, :fault
  json.url airplane_url(airplane, format: :json)
end
