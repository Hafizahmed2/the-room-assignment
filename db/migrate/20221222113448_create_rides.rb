# frozen_string_literal: true

class CreateRides < ActiveRecord::Migration[7.0]
  def change
    create_table :rides do |t|
      t.string     :start_address,       null: false, array: true
      t.string     :destination_address, null: false, array: true
      t.integer    :status
      t.boolean    :completed
      t.references :account

      t.timestamps
    end
  end
end
