json.array!(@media) do |medium|
  json.extract! medium, :id, :name, :auhter, :isbn13, :owner_id
  json.url medium_url(medium, format: :json)
end
