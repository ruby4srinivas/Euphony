json.array!(@genre_types) do |genre_type|
  json.extract! genre_type, :id
  json.url genre_type_url(genre_type, format: :json)
end
