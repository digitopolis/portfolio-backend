class WorkSerializer < ActiveModel::Serializer
  attributes :id, :title, :media, :year, :statement, :img_url

	has_many :comments
end
