class AddAvailabilityOptionsToVolunteers < ActiveRecord::Migration[5.2]
  def up
    change_table :volunteers do |t|
      t.string :avail_sun_am
      t.string :avail_sun_pm
      t.string :avail_mon_am
      t.string :avail_mon_pm
      t.string :avail_tue_am
      t.string :avail_tue_pm
      t.string :avail_wed_am
      t.string :avail_wed_pm
      t.string :avail_thr_am
      t.string :avail_thr_pm
      t.string :avail_fri_am
      t.string :avail_fri_pm
      t.string :avail_sat_am
      t.string :avail_sat_pm
    end
  end

  def down
    remove_column :volunteers, :availability
  end
  
end