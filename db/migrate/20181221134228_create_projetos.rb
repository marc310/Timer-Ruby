class CreateProjetos < ActiveRecord::Migration[5.2]
  def change
    create_table :projetos do |t|
      t.string :nome
      t.string :descricao
      t.decimal :precoProjeto
      t.boolean :ativo

      t.timestamps
    end
  end
end
