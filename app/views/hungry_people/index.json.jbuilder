json.array!(@hungry_people) do |hungry_person|
  json.extract! hungry_person, :id, :name
  json.url hungry_person_url(hungry_person, format: :json)
end
