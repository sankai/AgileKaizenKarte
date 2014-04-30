json.array!(@studentlogs) do |studentlog|
  json.extract! studentlog, :id, :student_id
  json.url studentlog_url(studentlog, format: :json)
end
