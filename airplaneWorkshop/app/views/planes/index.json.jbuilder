json.array!(@planes) do |plane|
  json.extract! plane, :id, :brand, :model, :fault
  json.url plane_url(plane, format: :json)
end
