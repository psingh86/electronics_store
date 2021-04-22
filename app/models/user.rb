class User < ApplicationRecord
    belongs_to :Province
    validates :first_name, :last_name, :password, :address, presence: true
end
