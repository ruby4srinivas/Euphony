class CreateGenreLanguages < ActiveRecord::Migration
  def change
    create_table :genre_languages do |t|
      t.string :genre_language_name, null: false, limit: 40

      t.timestamps
    end
    add_index :genre_languages, :genre_language_name, :unique => true
  end
end
