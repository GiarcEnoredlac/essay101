json.array!(@batches) do |batch|
  json.extract! batch, :id, :company, :package, :test_type, :component_scores, :instructor, :number_of_students, :essay_file, :complete
  json.url batch_url(batch, format: :json)
end
