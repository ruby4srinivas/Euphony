class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|

      t.string :album_name,limit: 100, null: false
      t.integer :year
      t.string :image
      t.string :genre_type_id

      t.timestamps
    end
    add_index :albums, :album_name
    #rename_column :albums, :id, :album_id
  end
end
