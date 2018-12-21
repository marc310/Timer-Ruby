class CreateFaturas < ActiveRecord::Migration[5.2]
  def change
    create_table :faturas do |t|
      t.date :emissao
      t.date :vencimento
      t.boolean :pago
      t.decimal :totalFatura

      t.timestamps
    end
  end
end
