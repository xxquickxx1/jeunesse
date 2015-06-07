json.array!(@userblogs) do |userblog|
  json.extract! userblog, :id, :title, :subtitle, :intro, :description, :tags, :seo_title, :meta_description
  json.url userblog_url(userblog, format: :json)
end
