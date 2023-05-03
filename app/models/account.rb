class Account < ApplicationRecord
  include AddressValidatorConcern

  devise    :database_authenticatable, :registerable,
            :recoverable, :rememberable, :validatable

  has_many  :rides
  validates :home_address, presence: true

  enum role: {rider: 0, driver: 1}
end
