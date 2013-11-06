class Pedido < ActiveRecord::Base
  belongs_to :cliente_id
  belongs_to :endereco_id
end
