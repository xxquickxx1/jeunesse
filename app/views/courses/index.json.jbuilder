json.array!(@courses) do |course|
  json.extract! course, :id, :title, :intro, :image, :color
  json.url course_url(course, format: :json)
end
