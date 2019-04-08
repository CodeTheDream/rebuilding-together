class AddAvailFriAmToVolunteers < ActiveRecord::Migration[5.2]
  def change
    add_column :volunteers, :avail_fri_am, :string
  end
end
