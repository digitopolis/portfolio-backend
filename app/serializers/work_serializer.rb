class WorkSerializer < ActiveModel::Serializer
  attributes :id, :title, :media, :year, :statement, :img_url, :artist_id

	has_many :comments
end
