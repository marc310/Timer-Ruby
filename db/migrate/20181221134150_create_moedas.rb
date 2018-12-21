class CreateMoedas < ActiveRecord::Migration[5.2]
  def change
    create_table :moedas do |t|
      t.string :cod
      t.string :simbolo
      t.string :descricao

      t.timestamps
    end
  end
end
