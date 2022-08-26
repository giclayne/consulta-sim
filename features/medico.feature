Feature: #retirei o nome da feature, porque estava dando erro
  As a medico que usa o sistema
  I want to criar, editar, remover e visualizar meu cadastro
  So that eu possa manter atualizada minhas informacoes cadastradas

  Scenario: criar medico
    Given Estou na pagina de cadastrar medico
    When eu preencho os dados nomecompleto 'Aline' cpf '12345678991' email 'aline@gmail.com' especialidade 'clinico geral' crm '1155PE' e clico cadastrar
    Then vejo que o meu cadastro 'Aline' foi realizado

  Scenario: remover medico
    Given estou na pagina de remover medico
    And o medico com nomecompleto 'Aline' cpf '12345678991' email 'aline@gmail.com' especialidade 'clinico geral' crm '1598PE' existe
    When eu clico em remover o medico com crm '1598PE'
    Then eu vejo uma mensagem que o medico com crm '1598PE' foi apagado com sucesso