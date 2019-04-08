class AddAvailWedPmToVolunteers < ActiveRecord::Migration[5.2]
  def change
    add_column :volunteers, :avail_wed_pm, :string
  end
end
