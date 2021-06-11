# frozen_string_literal: true

class DeviseTokenAuthCreateTrainees < ActiveRecord::Migration[6.1]
  def change
    create_table(:trainees) do |t|
      ## Required
      t.string :provider, null: false, default: 'email'
      t.string :uid, null: false, default: ''

      ## User Info
      # t.string :name
      t.string :nickname
      # t.string :image
      t.string :email

      ## Database authenticatable
      t.string :encrypted_password, null: false, default: ''

      ## Tokens
      t.text :tokens

      ## Recoverable
      # t.string   :reset_password_token
      # t.datetime :reset_password_sent_at
      # t.boolean  :allow_password_change, default: false

      ## Rememberable
      # t.datetime :remember_created_at

      ## Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, :default => 0, :null => false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      t.timestamps
    end

    add_index :trainees, :email, unique: true
    add_index :trainees, %i[uid provider], unique: true
    # add_index :trainees, :reset_password_token, unique: true
    # add_index :trainees, :confirmation_token,   unique: true
    # add_index :trainees, :unlock_token,         unique: true
  end
end
