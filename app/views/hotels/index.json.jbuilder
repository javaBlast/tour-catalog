json.array!(@hotels) do |hotel|
  json.extract! hotel, :id, :title, :description, :image_url, :price
  json.url hotel_url(hotel, format: :json)
end
