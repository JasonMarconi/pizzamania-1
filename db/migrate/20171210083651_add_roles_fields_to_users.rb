class AddRolesFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role_id, :integer
    add_column :users, :role_type, :string
  end
end
