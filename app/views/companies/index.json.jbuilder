json.array!(@companies) do |company|
  json.extract! company, :id, :type, :name, :address_one, :address_two, :city, :state, :zip
  json.url company_url(company, format: :json)
end
