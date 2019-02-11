class Comment < ApplicationRecord
  belongs_to :artist
  belongs_to :work
end
