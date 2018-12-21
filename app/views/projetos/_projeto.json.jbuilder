json.extract! projeto, :id, :nome, :descricao, :precoProjeto, :ativo, :created_at, :updated_at
json.url projeto_url(projeto, format: :json)
