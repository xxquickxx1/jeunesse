json.array!(@templates) do |template|
  json.extract! template, :id, :title, :description, :category
  json.url template_url(template, format: :json)
end
