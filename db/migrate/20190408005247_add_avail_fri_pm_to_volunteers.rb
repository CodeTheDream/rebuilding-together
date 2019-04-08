class AddAvailFriPmToVolunteers < ActiveRecord::Migration[5.2]
  def change
    add_column :volunteers, :avail_fri_pm, :string
  end
end
