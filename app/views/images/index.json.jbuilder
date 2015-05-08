json.array!(@images) do |image|
  json.extract! image, :id, :url, :publication_id
  json.url image_url(image, format: :json)
end
