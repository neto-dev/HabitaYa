json.array!(@publications) do |publication|
  json.extract! publication, :id, :title, :type, :typead, :size, :price, :rooms, :bathrooms, :old, :floors, :floor_loc, :garage, :closets, :description, :date, :status, :user_id
  json.url publication_url(publication, format: :json)
end
