class AddAvailMonAmToVolunteers < ActiveRecord::Migration[5.2]
  def change
    add_column :volunteers, :avail_mon_am, :string
  end
end
