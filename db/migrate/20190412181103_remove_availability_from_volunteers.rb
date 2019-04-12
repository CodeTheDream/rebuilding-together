class RemoveAvailabilityFromVolunteers < ActiveRecord::Migration[5.2]
  def down
    remove_column :volunteers, :availability
  end
end
