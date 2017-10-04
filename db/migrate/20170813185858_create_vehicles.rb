class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.belongs_to :peroson, foreign_key: true
      t.string :vehicle_registration
      t.integer :estimated_annual_mileage
      t.decimal :estimated_vehicle_value, precision: 10, scale: 2
      t.string :typical_parking_location

      t.timestamps
    end
  end
end
