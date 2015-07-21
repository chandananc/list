class CreateSubaCategories < ActiveRecord::Migration
  def change
    create_table :suba_categories do |t|
      t.string :listing_type
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
