json.array!(@enderecos) do |endereco|
  json.extract! endereco, :rua, :numero, :cliente_id
  json.url endereco_url(endereco, format: :json)
end
