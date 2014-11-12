json.array!(@consultas) do |consulta|
  json.extract! consulta, :id, :data, :medico_id, :user_id
  json.url consulta_url(consulta, format: :json)
end
