class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.integer :codigo
      t.boolean :pagamento
      t.decimal :limite
      t.decimal :desconto

      t.timestamps
    end
  end
end
