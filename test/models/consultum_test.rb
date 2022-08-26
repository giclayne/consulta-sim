require "test_helper"

class ConsultumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'Criando consulta sem preencher os dados' do
    consulta = Consultum.new
    assert_not consulta.save
  end

  test 'Salvando consulta com dados válidos' do
    paciente = Paciente.new nomecompleto:'Giclayne Yanne',
                            datanascimento:DateTime.now,
                            cpf:'12345678999',
                            email:'giclayne@gmail.com'
    assert paciente.save
    medico = Medico.new nomecompleto: 'Jose Ferreira',
                        cpf:'12345678900',
                        email:'joseferreira@gmail.com',
                        especialidade:'Clinico Geral',
                        crm:'1234567PE'
    assert medico.save

    consulta = Consultum.new data:DateTime.now,
                             horario:'11:00',
                             paciente_id: paciente.id,
                             medico_id: medico.id
    assert consulta.save
  end
end
