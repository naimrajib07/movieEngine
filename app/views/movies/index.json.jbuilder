json.array!(@movies) do |movie|
  json.extract! movie, :id, :name, :description, :director, :user_id
  json.url movie_url(movie, format: :json)
end
