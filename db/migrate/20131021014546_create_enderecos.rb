class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.string :rua
      t.integer :numero
      t.references :cliente, index: true

      t.timestamps
    end
  end
end
