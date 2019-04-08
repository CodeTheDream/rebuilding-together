class AddAvailWedAmToVolunteers < ActiveRecord::Migration[5.2]
  def change
    add_column :volunteers, :avail_wed_am, :string
  end
end
