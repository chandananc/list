class CreateSeas < ActiveRecord::Migration
  def change
    create_table :seas do |t|

      t.timestamps null: false
    end
  end
end
