json.array!(@avaliaca_medicos) do |avaliaca_medico|
  json.extract! avaliaca_medico, :id, :medico_id, :titulo, :texto, :rating
  json.url avaliaca_medico_url(avaliaca_medico, format: :json)
end
