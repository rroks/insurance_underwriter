class Peroson < ApplicationRecord
	has_one :vehicle, dependent: :destroy
	accepts_nested_attributes_for :vehicle

	has_many :driver_histories, dependent: :destroy
	accepts_nested_attributes_for :driver_histories, allow_destroy: true, reject_if: :all_blank
	
	enum title: [:Mr, :Ms]
    enum license_type: [:Full, :Provisional]
    enum occupation: [:Teacher, :Student, :Other]

	validates :title, :forename, :surname, :email, :date_of_birth, :telephone_number, 
			  :street, :city, :county, :postcode,
			  :license_type, :license_period, :occupation, 
			  presence: true

	validates :forename, :surname, length: { maximum: 30 }

	# Should be before a certain date so that the person is old enough to ge a driver license.
    validates :date_of_birth, timeliness: { on_or_before: lambda { Date.current }, type: :date }

    # It's associated with the person's age, no larger than the result of the current age minus legal driving age
    validates :license_period, numericality: { greater_than: 0 }
    
    validates :email, format: { with: /\A([\w\.\-\+]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,  message: 'Bad email address format' }

    validates :email, uniqueness: true
end
