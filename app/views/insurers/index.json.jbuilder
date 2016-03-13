json.array!(@insurers) do |insurer|
  json.extract! insurer, :id, :fio, :login, :password
  json.url insurer_url(insurer, format: :json)
end
