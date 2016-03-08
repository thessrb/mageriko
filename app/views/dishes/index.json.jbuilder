json.array!(@dishes) do |dish|
  json.extract! dish, :id, :name, :image_url, :price
  json.url dish_url(dish, format: :json)
end
