class CreateSub1Categories < ActiveRecord::Migration
  def change
    create_table :sub1_categories do |t|
      t.string :listing_type
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
