class Product < ApplicationRecord
    belongs_to :Category
    validates :name, :brand,:manufacturer, :source, :brand, :price, :isSale, :image, presence: true
end
