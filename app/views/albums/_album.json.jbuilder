json.extract! album, :id, :name, :price, :type, :genre, :musitian_id, :created_at, :updated_at
json.url album_url(album, format: :json)
