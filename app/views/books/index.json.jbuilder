json.array!(@books) do |book|
  json.extract! book, :id, :name, :auhter, :isbn13, :owner_id
  json.url book_url(book, format: :json)
end
