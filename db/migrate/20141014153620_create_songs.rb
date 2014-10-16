class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :song_name, null: false, limit: 100
      t.string :track, null: false
      t.integer :album_id

      t.timestamps
    end
  end
end
