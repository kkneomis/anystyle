json.array!(@styles) do |style|
  json.extract! style, :id, :name, :description, :image1, :image2, :image3, :image4, :poster_id, :stylist_id
  json.url style_url(style, format: :json)
end
