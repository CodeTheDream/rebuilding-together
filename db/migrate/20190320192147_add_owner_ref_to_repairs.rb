# frozen_string_literal: true

class AddOwnerRefToRepairs < ActiveRecord::Migration[5.2]
  def change
    add_reference :repairs, :owner, foreign_key: true
  end
end
