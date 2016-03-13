json.array!(@contracts) do |contract|
  json.extract! contract, :id, :client_id, :insurance_type_id, :insurer_id, :auto_id, :date_begin, :date_end
  json.url contract_url(contract, format: :json)
end
