class Order < ActiveRecord::Base
  belongs_to :pizza_type

  validates :customer_name, :customer_phone, :pickup_datetime, :pizza_type_id, :size, presence: true
end
