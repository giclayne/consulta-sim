require "test_helper"

class PacienteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  #
  test 'Salvando Paciente com dados validos' do
    paciente = Paciente.new nomecompleto: 'Giclayne Yanne',
                            datanascimento: DateTime.now,
                            cpf: '11538573407',
                            email: 'giclayne@gmail.com'
    assert paciente.save
  end

  test 'Salvando Paciente com cpf invalido' do
    paciente = Paciente.new nomecompleto: 'Giclayne Yanne',
                            datanascimento: DateTime.now,
                            cpf: '115385734an',
                            email: 'giclayne@gmail.com'
    assert_not paciente.save
  end

  test 'Salvando paciente com endereco' do
    paciente = Paciente.new nomecompleto: 'Giclayne Yanne',
                            datanascimento: DateTime.now,
                            cpf: '11538573407',
                            email: 'giclayne@gmail.com'

    endereco = Endereco.new cep:'55294802',
                            cidade: 'Garanhuns',
                            bairro: 'Dom Helder Câmara',
                            logradouro: 'Rua Sebastiao Moura Filho',
                            complemento: 'Rua sem Saida'

    endereco.paciente = paciente.id
    assert paciente.save
  end


end
