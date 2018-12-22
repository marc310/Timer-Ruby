class AddProjetoToTrabalho < ActiveRecord::Migration[5.2]
  def change
    add_reference :trabalhos, :projeto, foreign_key: true
  end
end
