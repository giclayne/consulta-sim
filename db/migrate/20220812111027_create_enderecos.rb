class CreateEnderecos < ActiveRecord::Migration[7.0]
  def change
    create_table :enderecos do |t|
      t.integer :cep
      t.string :cidade
      t.string :bairro
      t.string :logradouro
      t.string :complemento
      t.references :paciente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
