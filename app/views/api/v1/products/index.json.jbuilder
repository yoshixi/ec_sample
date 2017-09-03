#products#index.json
json.array! @products do |product|
  json.(product, :name, :desc, :image, :price)
end
