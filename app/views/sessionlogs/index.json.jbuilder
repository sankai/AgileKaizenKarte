json.array!(@sessionlogs) do |sessionlog|
  json.extract! sessionlog, :id, :session_id
  json.url sessionlog_url(sessionlog, format: :json)
end
