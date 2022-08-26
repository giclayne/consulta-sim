Feature:
  As a paciente que usa o sistema
  I want to criar, remover, editar e visualizar meu cadastro
  So that eu possa manter atualizada minhas informacoes cadastradas

  Scenario: cadastrar paciente com cpf valido
    Given Estou na pagina de cadastrar paciente
    When eu preencho os dados nomecompleto 'Mariana' datanascimento '1997-04-04' cpf '98765432100' email 'mariana@gmail.com' cep '55290000' cidade 'Garanhuns' bairro 'centro' logradouro 'Rua sem saida' complemento 'proximo ao mercado TEddy' e clico cadastrar
    Then vejo que o meu cadastro '98765432100' foi efetuado


  Scenario: remover paciente
    Given Estou na pagina de remover paciente
    And o paciente com nomecompleto 'Mariana' datanascimento '1997-04-04' cpf '98765432100' email 'mariana@gmail.com' cep '55290000' cidade 'Garanhuns' bairro 'centro' logradouro 'Rua sem saida' complemento 'proximo ao mercado TEddy' existe
    When eu clico em remover o paciente com cpf '98765432100'
    Then eu vejo uma mensagem que o paciente com cpf '98765432100' foi apagado com sucesso