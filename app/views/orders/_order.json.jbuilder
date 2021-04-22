json.extract! order, :id, :date, :status, :total_amount, :created_at, :updated_at
json.url order_url(order, format: :json)
