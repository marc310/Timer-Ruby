class AddMoedaToCliente < ActiveRecord::Migration[5.2]
  def change
    add_reference :clientes, :moeda, foreign_key: true
  end
end
