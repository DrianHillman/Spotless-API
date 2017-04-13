Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :allPlaylists, types[Types::PlaylistType] do
    description "Playlists that belong to the user"
    resolve ->(obj, args, ctx) {
      Playlist.all.map { |x| x }
    }
  end

  field :allIDs, types[String] do
    description "The id of all playlists"
    resolve ->(obj, args, ctx) {
      Playlist.all.map { |x| x.id }
    }
  end

  field :allTitles, types.String do
    description "The titles of all playlists"
    resolve ->(obj, args, ctx) {
      Playlist.all.map { |x| x.title }
    }
  end
end
