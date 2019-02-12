class Work < ApplicationRecord
  belongs_to :artist
	has_many :comments, dependent: :destroy
end
