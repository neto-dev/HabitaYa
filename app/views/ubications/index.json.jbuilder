json.array!(@ubications) do |ubication|
  json.extract! ubication, :id, :country, :city, :town, :street, :number_out, :number_in, :colony, :postal, :publication_id
  json.url ubication_url(ubication, format: :json)
end
