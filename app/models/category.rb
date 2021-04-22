class Category < ApplicationRecord
    has_many :Products
    has_one_attached :image
end
