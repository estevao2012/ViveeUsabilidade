json.array!(@medicos) do |medico|
  json.extract! medico, :id, :nome
  json.url medico_url(medico, format: :json)
end
