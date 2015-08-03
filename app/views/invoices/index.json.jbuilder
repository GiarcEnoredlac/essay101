json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :company_name, :number_of_batches, :total_amount, :quantity_of_packages, :file
  json.url invoice_url(invoice, format: :json)
end
