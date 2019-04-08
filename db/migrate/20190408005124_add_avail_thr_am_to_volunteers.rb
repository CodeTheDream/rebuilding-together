class AddAvailThrAmToVolunteers < ActiveRecord::Migration[5.2]
  def change
    add_column :volunteers, :avail_thr_am, :string
  end
end
