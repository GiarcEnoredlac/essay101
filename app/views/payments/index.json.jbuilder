json.array!(@payments) do |payment|
  json.extract! payment, :id, :company, :payment_type, :payment_amount
  json.url payment_url(payment, format: :json)
end
