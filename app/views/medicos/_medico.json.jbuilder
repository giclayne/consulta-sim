json.extract! medico, :id, :nomecompleto, :cpf, :email, :especialidade, :crm, :created_at, :updated_at
json.url medico_url(medico, format: :json)
