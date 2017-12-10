json.extract! order, :id, :customer_name, :customer_phone, :pickup_datetime, :pizza_type_id, :size, :created_at, :updated_at
json.url order_url(order, format: :json)
