json.array!(@detalhes) do |detalhe|
  json.extract! detalhe, :item_id_id, :quantidade
  json.url detalhe_url(detalhe, format: :json)
end
