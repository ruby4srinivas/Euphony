class CreateAlbumsArtists < ActiveRecord::Migration
  def change
    create_table :albums_artists do |t|
      t.integer :artist_id
      t.integer :album_id
    end
  end
end
