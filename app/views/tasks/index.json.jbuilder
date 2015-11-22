json.array!(@tasks) do |task|
  json.extract! task, :id, :user_id, :category_id, :want_id, :order, :name, :start_date, :end_date, :do_miniute, :complete_div
  json.url task_url(task, format: :json)
end
