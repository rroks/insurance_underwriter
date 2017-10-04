class AddAttributesToVehicle < ActiveRecord::Migration[5.1]
  def change
    add_column :vehicles, :policy_start_date, :date
  end
end
