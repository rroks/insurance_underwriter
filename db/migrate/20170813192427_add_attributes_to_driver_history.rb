class AddAttributesToDriverHistory < ActiveRecord::Migration[5.1]
  def change
    add_column :driver_histories, :date_of_incident, :date
    add_column :driver_histories, :total_value_of_claim, :integer
    add_column :driver_histories, :incident_type, :string
    add_column :driver_histories, :description, :text
  end
end
