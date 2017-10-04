class Vehicle < ApplicationRecord
  belongs_to :peroson
  enum typical_parking_location: [:Garage, :Driveway, :Street]

  validates  :vehicle_registration, 
  			     :estimated_annual_mileage, 
  			     :estimated_vehicle_value, 
  			     :typical_parking_location, 
  			     :policy_start_date, 
  			     presence: true

  validates :vehicle_registration, length: { maximum: 30 }

  validates :estimated_annual_mileage, numericality: { greater_than_or_equal_to: 0 }

  # The precision is also limited in migration file
  validates :estimated_vehicle_value, numericality: { greater_than_or_equal_to: 0.01 }

  # Should be limited. Only a date before a certain date is valid. But I am not going to specify it.
  validates :policy_start_date, timeliness: { on_or_after: lambda { Date.current }, type: :date }
end
