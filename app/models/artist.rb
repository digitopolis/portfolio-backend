class Artist < ApplicationRecord
	has_secure_password
	has_many :works, dependent: :destroy

	validates :username, uniqueness: true
end
