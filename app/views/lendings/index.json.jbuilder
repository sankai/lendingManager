json.array!(@lendings) do |lending|
  json.extract! lending, :id, :day_borrow, :day_estimated_return, :day_actual_return, :media_id, :user_id, :review
  json.url lending_url(lending, format: :json)
end
