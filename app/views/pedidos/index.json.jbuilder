json.array!(@pedidos) do |pedido|
  json.extract! pedido, :cliente_id_id, :endereco_id_id
  json.url pedido_url(pedido, format: :json)
end
