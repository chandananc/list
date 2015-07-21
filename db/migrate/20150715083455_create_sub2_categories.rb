class CreateSub2Categories < ActiveRecord::Migration
  def change
    create_table :sub2_categories do |t|
      t.string :listing_status
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
