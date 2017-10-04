class DriverHistory < ApplicationRecord
  belongs_to :peroson

  # There are many kinds of incident, but I am only going to list out two of them.
  enum incident_type: [:back_up_collision, :head_on_collision]

  validates :date_of_incident, :total_value_of_claim, :incident_type, :description, presence: true

  validates :date_of_incident, timeliness: { :on_or_before => lambda { Date.current }, :after => lambda { 3.years.ago } }

  validates :total_value_of_claim, numericality: { greater_than: 0 }

  validates :description, length: { maximum: 200 }, allow_blank: true
end
