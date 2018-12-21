json.extract! pagamento, :id, :data, :descricao, :valorPago, :created_at, :updated_at
json.url pagamento_url(pagamento, format: :json)
