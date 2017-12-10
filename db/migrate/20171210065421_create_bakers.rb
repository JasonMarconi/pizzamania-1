class CreateBakers < ActiveRecord::Migration
  def change
    create_table :bakers do |t|

      t.timestamps null: false
    end
  end
end
