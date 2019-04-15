class RemoveAvailabilityFromVolunteers < ActiveRecord::Migration[5.2]
  def down
    remove_column :volunteers, :availability, :string if availability_exists?
  end
  
  def up
    remove_column :volunteers, :availability, :string if availability_exists?
  end
  
  private
  def availability_exists?
    column_exists?(:volunteers, :availability)
  end
end
