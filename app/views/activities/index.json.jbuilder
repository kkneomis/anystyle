json.array!(@activities) do |activity|
  json.extract! activity, :id, :actor_id, :action, :receiver_id
  json.url activity_url(activity, format: :json)
end
