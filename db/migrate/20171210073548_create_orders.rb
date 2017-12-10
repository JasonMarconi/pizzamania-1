class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.string :customer_phone
      t.datetime :pickup_datetime
      t.references :pizza_type, index: true, foreign_key: true
      t.string :size

      t.timestamps null: false
    end
  end
end
