json.array!(@trail_mixes) do |trail_mix|
  json.extract! trail_mix, :id, :name, :ingredients
  json.url trail_mix_url(trail_mix, format: :json)
end
