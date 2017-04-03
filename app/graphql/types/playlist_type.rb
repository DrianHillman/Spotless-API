Types::PlaylistType = GraphQL::ObjectType.define do
  name "Playlist"
  description "A user\'s playlist"
  field :id, !types.ID
  field :title, types.String
  field :spotify_id, types.String
end
