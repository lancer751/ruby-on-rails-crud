json.extract! product, :id, :name, :description, :imgages, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
json.description product.description.to_s
json.imgages do
  json.array!(product.imgages) do |imgage|
    json.id imgage.id
    json.url url_for(imgage)
  end
end
