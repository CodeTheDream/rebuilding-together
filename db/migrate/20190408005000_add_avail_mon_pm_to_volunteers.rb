class AddAvailMonPmToVolunteers < ActiveRecord::Migration[5.2]
  def change
    add_column :volunteers, :avail_mon_pm, :string
  end
end
