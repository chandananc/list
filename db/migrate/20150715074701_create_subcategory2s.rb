class CreateSubcategory2s < ActiveRecord::Migration
  def change
    create_table :subcategory2s do |t|
      t.string :listing_status
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
