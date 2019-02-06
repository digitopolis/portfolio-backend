class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :media, :bio, :img_url, :twitter, :instagram, :username

	has_many :works
end
