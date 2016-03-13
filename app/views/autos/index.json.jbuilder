json.array!(@autos) do |auto|
  json.extract! auto, :id, :client_id, :gosnomer, :tech_passport, :marka_model, :date_release, :color
  json.url auto_url(auto, format: :json)
end
