class AddAvailTueAmToVolunteers < ActiveRecord::Migration[5.2]
  def change
    add_column :volunteers, :avail_tue_am, :string
  end
end
