class Cliente < ApplicationRecord
	#attr_accessible :nome, :email, :cliente_id
	belongs_to:moeda
end
