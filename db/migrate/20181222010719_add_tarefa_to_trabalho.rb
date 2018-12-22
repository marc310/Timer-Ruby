class AddTarefaToTrabalho < ActiveRecord::Migration[5.2]
  def change
    add_reference :trabalhos, :tarefa, foreign_key: true
  end
end
