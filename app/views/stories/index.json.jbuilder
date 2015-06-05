json.array!(@stories) do |story|
  json.extract! story, :id, :title, :description, :place
  json.url story_url(story, format: :json)
end
