json.array!(@insurance_types) do |insurance_type|
  json.extract! insurance_type, :id, :name, :desc, :price
  json.url insurance_type_url(insurance_type, format: :json)
end
