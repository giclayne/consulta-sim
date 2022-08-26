require "test_helper"

class MedicoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'Salvando medico com dados validos' do
    medico = Medico.new nomecompleto:'Mariana Silva',
                        cpf: '12345678988',
                        email: 'marianasilva@gmail.com',
                        especialidade: 'Ortopedista',
                        crm: '123456PE'

    assert medico.save
  end

  test 'Criando um cadastro de medico sem preencher os dados' do
    medico = Medico.new
    assert_not medico.save
  end

  test 'Criando medico sem crm' do
    medico = Medico.new nomecompleto:'Mariana Silva',
                        cpf: '12345678988',
                        email: 'marianasilva@gmail.com',
                        especialidade: 'Ortopedista',
                        crm: ''

    assert_not medico.save
  end
end
