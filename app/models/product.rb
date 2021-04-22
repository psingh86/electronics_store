class Product < ApplicationRecord
    belongs_to :Category
    validates :name, :brand,:manufacturur, :source, :brand, :price, :isSale, :image, presence: true
end
