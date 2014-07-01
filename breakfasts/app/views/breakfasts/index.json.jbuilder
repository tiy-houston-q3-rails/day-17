json.array!(@breakfasts) do |breakfast|
  json.extract! breakfast, :id, :name, :description, :image_url
  json.url breakfast_url(breakfast, format: :json)
end
