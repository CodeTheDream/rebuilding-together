class AddStatusToRepair < ActiveRecord::Migration[5.2]
  def change
    add_column :repairs, :status, :string, default: "pending"
  end
end
