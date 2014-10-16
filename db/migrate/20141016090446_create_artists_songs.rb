class CreateArtistsSongs < ActiveRecord::Migration
  def change
    create_table :artists_songs do |t|
      t.integer :artist_id
      t.integer :song_id
    end
  end
end
