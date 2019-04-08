class AddAvailSatPmToVolunteers < ActiveRecord::Migration[5.2]
  def change
    add_column :volunteers, :avail_sat_pm, :string
  end
end
