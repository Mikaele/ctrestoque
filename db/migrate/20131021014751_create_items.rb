class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :codigo
      t.string :fabrica
      t.integer :quantidade
      t.string :descricao

      t.timestamps
    end
  end
end
