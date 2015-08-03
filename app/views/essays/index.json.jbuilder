json.array!(@essays) do |essay|
  json.extract! essay, :id, :student_name, :text, :revier_one, :reviewer_two
  json.url essay_url(essay, format: :json)
end
