# frozen_string_literal: true

module AddressValidatorConcern
  extend ActiveSupport::Concern

  included do
    validate :validate_address_attributes
  end

  private

  def validate_address_attributes
    attributes.each do |attribute, value|
      if address_attribute?(attribute) && !valid_address?(value)
        errors.add(attribute, 'Address only allowed in format [longitude, latitude]')
      end
    end
  end

  def address_attribute?(attribute)
    attribute.to_s.include?('address')
  end

  def valid_address?(value)
    value.is_a?(Array) && value.size == 2 && value.all? { |v| num?(v) }
  end

  def num?(value)
    Float(value)
    true
  rescue StandardError
    false
  end
end
