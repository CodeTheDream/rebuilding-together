class CreateVolunteerRepairs < ActiveRecord::Migration[5.2]
  def change
    create_table :volunteer_repairs do |t|
      t.integer :volunteer_id
      t.integer :repair_id
      t.string   :status

      t.timestamps
    end
  end
end
