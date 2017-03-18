class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
