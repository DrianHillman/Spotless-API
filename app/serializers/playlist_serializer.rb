class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :title, :author

  def author
    Faker::Name.name
  end
end
