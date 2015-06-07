json.array!(@courseitems) do |courseitem|
  json.extract! courseitem, :id, :title, :intro, :image
  json.url courseitem_url(courseitem, format: :json)
end
