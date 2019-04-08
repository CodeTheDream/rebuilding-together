class AddAvailSatAmToVolunteers < ActiveRecord::Migration[5.2]
  def change
    add_column :volunteers, :avail_sat_am, :string
  end
end
