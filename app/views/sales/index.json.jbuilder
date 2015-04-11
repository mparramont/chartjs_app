json.array!(@sales) do |sale|
  json.extract! sale, :id, :year, :month, :sales
  json.url sale_url(sale, format: :json)
end
