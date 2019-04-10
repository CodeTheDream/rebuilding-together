class RemoveEmailFromVolunteers < ActiveRecord::Migration[5.2]
  def change
    remove_column :volunteers, :email, :string
  end
end
