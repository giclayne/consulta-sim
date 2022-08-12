json.extract! paciente, :id, :nomecompleto, :datanascimento, :cpf, :email, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
