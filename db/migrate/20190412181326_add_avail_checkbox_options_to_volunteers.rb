class AddAvailCheckboxOptionsToVolunteers < ActiveRecord::Migration[5.2]
  def change
    add_column :volunteers, :avail_sun_am, :string
    add_column :volunteers, :avail_sun_pm, :string
    add_column :volunteers, :avail_mon_am, :string
    add_column :volunteers, :avail_mon_pm, :string
    add_column :volunteers, :avail_tue_am, :string
    add_column :volunteers, :avail_tue_pm, :string
    add_column :volunteers, :avail_wed_am, :string
    add_column :volunteers, :avail_wed_pm, :string
    add_column :volunteers, :avail_thr_am, :string
    add_column :volunteers, :avail_thr_pm, :string
    add_column :volunteers, :avail_fri_am, :string
    add_column :volunteers, :avail_fri_pm, :string
    add_column :volunteers, :avail_sat_am, :string
    add_column :volunteers, :avail_sat_pm, :string
  end
end