class Artist < ApplicationRecord
	has_secure_password
	has_many :works

	validates :username, uniqueness: true
end
