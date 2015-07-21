class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.float :sqft
      t.integer :rooms
      t.integer :built_year
      t.decimal :cost
      t.string :address
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
