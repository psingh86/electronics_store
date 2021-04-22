class Category < ApplicationRecord
    has_many :Products
    has_one_attached :image
    validates :name, :description, presence: true
end
