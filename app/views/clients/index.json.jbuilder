json.array!(@clients) do |client|
  json.extract! client, :id, :fio, :passport, :licence, :drive_date_begin, :birthday
  json.url client_url(client, format: :json)
end
