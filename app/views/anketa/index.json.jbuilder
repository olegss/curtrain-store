json.array!(@anketa) do |anketum|
  json.extract! anketum, :id, :name_store, :email
  json.url anketum_url(anketum, format: :json)
end
