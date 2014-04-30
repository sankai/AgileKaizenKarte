json.array!(@classworks) do |classwork|
  json.extract! classwork, :id, :sessiondate, :term_id
  json.url classwork_url(classwork, format: :json)
end
