class Endereco < ApplicationRecord
  belongs_to :paciente

  validates :cep, presence: true,  length: {is: 8}
  validates :cidade, presence: true, length: {minimum: 3, too_short: "%{count} Caracteres minimos permitidos",
                                              maximum: 50, too_long: "%{count} Caracteres maximos permitidos"}

  validates :bairro, presence: true, length: {minimum: 3, too_short: "%{count} Caracteres minimos permitidos",
                                              maximum: 20, too_long: "%{count} Caracteres maximos permitidos"}

  validates :logradouro, presence: true, length: {minimum: 3, too_short: "%{count} Caracteres minimos permitidos",
                                                  maximum: 60, too_long: "%{count} Caracteres maximos permitidos"}

  validates :complemento, length: {maximum: 50, too_long: "%{count} Caracteres maximos permitidos"}
end
