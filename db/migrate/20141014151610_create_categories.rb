class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :category_name, null: false, limit: 40

      t.timestamps
    end
   # rename_column :categories, :id, :category_id
    add_index :categories, :category_name, :unique => true
  end
end
