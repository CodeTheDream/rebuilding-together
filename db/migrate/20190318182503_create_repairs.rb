class CreateRepairs < ActiveRecord::Migration[5.2]
  def change
    create_table :repairs do |t|
      t.string :repair_type
      t.string :repair_notes
      t.references :owner, foriegn_key: true 
      t.timestamps
    end
  end
end
