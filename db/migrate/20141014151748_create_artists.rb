class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :artist_name,null: false, limit: 100
      t.string :image
      t.integer :category_id

      t.timestamps
    end
    #rename_column :artists, :id, :artist_id
    add_index :artists, :artist_name, :unique => true
  end
end
