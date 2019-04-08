# frozen_string_literal: true

class CreateOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :owners do |t|
      t.references :user, index: { unique: true }, foreign_key: true
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :year
      t.string :email
      t.string :phone
      t.string :em_contact_name
      t.string :em_contact_phone
      t.string :em_contact_relationship
      t.string :language
      t.string :howd_you_hear

      t.timestamps
    end
  end
end
