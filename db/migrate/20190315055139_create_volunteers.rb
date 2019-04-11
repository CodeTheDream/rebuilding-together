# frozen_string_literal: true

class CreateVolunteers < ActiveRecord::Migration[5.2]
  def change
    create_table :volunteers do |t|
      t.string :picture
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :mobile_phone
      t.date :birthdate
      t.string :gender
      t.string :city
      t.string :state
      t.string :employer
      t.string :position
      t.string :skill
      t.text :volunteer_notes
      t.integer :user_id
      t.timestamps
    end
  end
end
