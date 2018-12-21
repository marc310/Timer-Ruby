class AddNotasToTrabalho < ActiveRecord::Migration[5.2]
  def change
    add_column :trabalhos, :notas, :string
  end
end
