class CreatePagamentos < ActiveRecord::Migration[5.2]
  def change
    create_table :pagamentos do |t|
      t.date :data
      t.string :descricao
      t.decimal :valorPago

      t.timestamps
    end
  end
end
