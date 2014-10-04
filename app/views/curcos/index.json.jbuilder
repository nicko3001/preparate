json.array!(@curcos) do |curco|
  json.extract! curco, :id, :titulo, :descripcion, :precio
  json.url curco_url(curco, format: :json)
end
