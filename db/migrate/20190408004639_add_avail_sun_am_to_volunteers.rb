class AddAvailSunAmToVolunteers < ActiveRecord::Migration[5.2]
  def change
    add_column :volunteers, :avail_sun_am, :string
  end
end
