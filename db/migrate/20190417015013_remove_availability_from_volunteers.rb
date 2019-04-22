class RemoveAvailabilityFromVolunteers < ActiveRecord::Migration[5.2]
  def change
    remove_column :volunteers, :availability, :string if availability_exists?
  end
  
  private
  def availability_exists?
    column_exists?(:volunteers, :availability)
  end
end
