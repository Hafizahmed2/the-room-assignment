# frozen_string_literal: true

class DeviseCreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|

      t.string     :email,              null: false, default: ""
      t.string     :encrypted_password, null: false, default: ""

      t.string     :reset_password_token
      t.datetime   :reset_password_sent_at

      t.datetime   :remember_created_at

      t.integer    :role,               index: true
      t.string     :home_address,       null: false, array: true

      t.timestamps                    null: false
    end

    add_index :accounts, :email,                unique: true
    add_index :accounts, :reset_password_token, unique: true
  end
end
