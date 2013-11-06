json.array!(@clientes) do |cliente|
  json.extract! cliente, :codigo, :pagamento, :limite, :desconto
  json.url cliente_url(cliente, format: :json)
end
