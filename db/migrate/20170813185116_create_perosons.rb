class CreatePerosons < ActiveRecord::Migration[5.1]
  def change
    create_table :perosons do |t|
      t.string :title
      t.string :forename
      t.string :surname
      t.string :email
      t.date :date_of_birth
      t.string :telephone_number
      t.string :street
      t.string :city
      t.string :county
      t.string :postcode
      t.string :license_type
      t.integer :license_period
      t.string :occupation

      t.timestamps
    end
  end
end
