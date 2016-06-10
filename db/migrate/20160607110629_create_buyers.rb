class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.string  :buyer_id,          null: false, defalut: ""
      t.integer :buyer_price,       null: false, default: 0
      t.integer :book_id,           null: false, default: 1

      t.timestamps null: false
    end
  end
end
