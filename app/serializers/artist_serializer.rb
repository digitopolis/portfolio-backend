class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :media, :bio, :img_url

	has_many :works
end
