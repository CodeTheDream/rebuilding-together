class AddAvailSunPmToVolunteers < ActiveRecord::Migration[5.2]
  def change
    add_column :volunteers, :avail_sun_pm, :string
  end
end
