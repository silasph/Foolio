json.array!(@folios) do |folio|
  json.extract! folio, :id, :title, :description
  json.url folio_url(folio, format: :json)
end
