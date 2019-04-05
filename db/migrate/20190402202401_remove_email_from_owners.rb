# frozen_string_literal: true

class RemoveEmailFromOwners < ActiveRecord::Migration[5.2]
  def change
    remove_column :owners, :email, :string
  end
end
