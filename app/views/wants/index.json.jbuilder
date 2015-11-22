json.array!(@wants) do |want|
  json.extract! want, :id, :user_id, :category_id, :order, :name, :start_date, :end_date
  json.url want_url(want, format: :json)
end
