json.array!(@packages) do |package|
  json.extract! package, :id, :name, :internal_comment, :allow_score, :allow_draft, :allow_critique, :allow_internal_edits, :turnover, :number_of_editors, :price, :add_on_price
  json.url package_url(package, format: :json)
end
