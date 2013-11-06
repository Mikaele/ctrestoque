class CreateDetalhes < ActiveRecord::Migration
  def change
    create_table :detalhes do |t|
      t.references :item_id, index: true
      t.integer :quantidade

      t.timestamps
    end
  end
end
