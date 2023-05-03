# frozen_string_literal: true

class Ride < ApplicationRecord
  include AddressValidatorConcern

  belongs_to :account
  enum status: {open: 0, close: 1, in_progress: 2}

  validates :start_address, :destination_address, presence: true

end
