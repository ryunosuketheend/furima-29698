class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :explanation, null: false
      t.integer :category_id, null: false
      t.integer :item_status, null: false
      t.integer :action_status, null:false
      t.integer :delivery_fee, null:false
      t.integer :shopping_origin, null: false
      t.integer :days_until_shipping, null: false
      t.integer :exhibition_price, null: false
      t.integer :user_id, null:false, foreign_key:true
      t.timestamps
    end
  end
end
