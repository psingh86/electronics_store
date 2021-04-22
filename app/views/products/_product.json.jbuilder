json.extract! product, :id, :name, :brand, :manufacturer, :source, :price, :isSale, :image, :created_at, :updated_at
json.url product_url(product, format: :json)
