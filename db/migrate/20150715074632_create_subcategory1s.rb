class CreateSubcategory1s < ActiveRecord::Migration
  def change
    create_table :subcategory1s do |t|
      t.string :listing_type
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
