Given('Estou na pagina de cadastrar paciente') do
  visit 'pacientes/new'
  expect(page).to have_current_path('/pacientes/new')
end

When('eu preencho os dados nomecompleto {string} datanascimento {string} cpf {string} email {string} cep {string} cidade {string} bairro {string} logradouro {string} complemento {string} e clico cadastrar') do |nomecompleto, datanascimento, cpf, email, cep, cidade, bairro, logradouro, complemento|
  fill_in 'paciente[nomecompleto]', :with => nomecompleto
  fill_in 'paciente[datanascimento]', :with => datanascimento
  fill_in 'paciente[cpf]', :with => cpf
  fill_in 'paciente[email]', :with => email
  fill_in 'paciente[endereco_attributes][cep]', :with => cep
  fill_in 'paciente[endereco_attributes][cidade]', :with => cidade
  fill_in 'paciente[endereco_attributes][bairro]', :with => bairro
  fill_in 'paciente[endereco_attributes][logradouro]', :with => logradouro
  fill_in 'paciente[endereco_attributes][complemento]', :with => complemento
  click_button 'Create Paciente'
end

Then ('vejo que o meu cadastro {string} foi efetuado') do |cpf|
  expect(page).to have_content(cpf)
  expect(page).to have_current_path(pacientes_path + '/' + Paciente.last.id.to_s)
end


Given('Estou na pagina de remover paciente') do
  visit 'pacientes'
  expect(page).to have_current_path('/pacientes')
end

Given('o paciente com nomecompleto {string} datanascimento {string} cpf {string} email {string} cep {string} cidade {string} bairro {string} logradouro {string} complemento {string} existe') do |nomecompleto, datanascimento, cpf, email, cep, cidade, bairro, logradouro, complemento|
  visit 'pacientes/new'
  fill_in 'paciente[nomecompleto]', :with => nomecompleto
  fill_in 'paciente[datanascimento]', :with => datanascimento
  fill_in 'paciente[cpf]', :with => cpf
  fill_in 'paciente[email]', :with => email
  fill_in 'paciente[endereco_attributes][cep]', :with => cep
  fill_in 'paciente[endereco_attributes][cidade]', :with => cidade
  fill_in 'paciente[endereco_attributes][bairro]', :with => bairro
  fill_in 'paciente[endereco_attributes][logradouro]', :with => logradouro
  fill_in 'paciente[endereco_attributes][complemento]', :with => complemento
  click_button 'Create Paciente'
  expect(page).to have_content(cpf)
end

When ('eu clico em remover o paciente com cpf {string}') do |cpf|
  expect(page).to have_content(cpf)
  click_button "Destroy this paciente"
end
Then ('eu vejo uma mensagem que o paciente com cpf {string} foi apagado com sucesso') do |cpf|
  expect(page).to have_no_content(cpf)
  expect(page).to have_current_path('/pacientes')
end