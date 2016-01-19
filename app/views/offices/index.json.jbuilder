json.array!(@offices) do |office|
  json.extract! office, :id, :name, :address, :contact
  json.url office_url(office, format: :json)
end
