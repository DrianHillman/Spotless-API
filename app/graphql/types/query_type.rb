Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :allPlaylists, types.String do
    description "Playlists that belong to the user"
    resolve ->(obj, args, ctx) {
      "Hello World!"
      # Playlist.all.map { |x| x }
    }
  end
end
