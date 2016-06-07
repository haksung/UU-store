class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string  :title,               null: false, defalut: ""
      t.string  :major
      t.string  :college
      t.string  :author
      t.string  :publisher
      t.string  :coursename
      t.string  :profname
      t.string  :seller_id,           null: false, default: ""
      t.integer :seller_price,        null: false, default: 999999

      t.timestamps null: false
    end
  end
end