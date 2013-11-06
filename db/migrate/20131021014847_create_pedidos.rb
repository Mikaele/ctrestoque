class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.references :cliente_id, index: true
      t.references :endereco_id, index: true

      t.timestamps
    end
  end
end
