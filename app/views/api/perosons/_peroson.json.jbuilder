json.extract! peroson, :id, :title, :forename, :surname, :email, :date_of_birth, :telephone_number, :street, :city, :county, :postcode, :license_type, :license_period, :occupation, :created_at, :updated_at
json.url peroson_url(peroson, format: :json)
