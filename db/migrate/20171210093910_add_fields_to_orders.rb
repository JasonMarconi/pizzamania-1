class AddFieldsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :is_completed, :boolean, default: false
    add_column :orders, :is_ready, :boolean, default: false
  end
end
