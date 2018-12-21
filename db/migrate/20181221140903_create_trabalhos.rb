class CreateTrabalhos < ActiveRecord::Migration[5.2]
  def change
    create_table :trabalhos do |t|
      t.datetime :inicio
      t.datetime :final
      t.string :horas
      t.decimal :rendimento
      t.boolean :livre
      t.boolean :faturado

      t.timestamps
    end
  end
end
