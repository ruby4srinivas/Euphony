class CreateGenreTypes < ActiveRecord::Migration
  def change
    create_table :genre_types do |t|
      t.string :genre_type_name ,null: false, limit: 100
      t.integer :genre_language_id

      t.timestamps
    end
    add_index :genre_types, :genre_type_name
  end
end
