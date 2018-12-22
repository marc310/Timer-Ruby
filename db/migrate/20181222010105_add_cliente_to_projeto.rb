class AddClienteToProjeto < ActiveRecord::Migration[5.2]
  def change
    add_reference :projetos, :cliente, foreign_key: true
  end
end
