json.array!(@categories) do |category|
  json.extract! category, :id, :user_id, :order, :name, :color
  json.url category_url(category, format: :json)
end
