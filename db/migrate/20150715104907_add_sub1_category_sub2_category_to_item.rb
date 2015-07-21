class AddSub1CategorySub2CategoryToItem < ActiveRecord::Migration
  def change
    add_column :items, :sub1_category_id, :integer
    add_column :items, :sub2_category_id, :integer
  end
end
