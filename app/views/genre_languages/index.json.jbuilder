json.array!(@genre_languages) do |genre_language|
  json.extract! genre_language, :id
  json.url genre_language_url(genre_language, format: :json)
end
