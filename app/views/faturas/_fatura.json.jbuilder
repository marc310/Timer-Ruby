json.extract! fatura, :id, :emissao, :vencimento, :pago, :totalFatura, :created_at, :updated_at
json.url fatura_url(fatura, format: :json)
