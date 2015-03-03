json.array!(@clients) do |client|
  json.extract! client, :id, :fname, :lname, :addr1, :addr2, :city, :state, :country, :phone
  json.url client_url(client, format: :json)
end
