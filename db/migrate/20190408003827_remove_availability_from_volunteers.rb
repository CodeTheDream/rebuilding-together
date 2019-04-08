class RemoveAvailabilityFromVolunteers < ActiveRecord::Migration[5.2]
  def change
    remove_column :volunteers, :availability, :string
  end
end
