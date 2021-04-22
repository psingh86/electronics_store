class Province < ApplicationRecord
    has_many :Users
    validates :name, :GST, :PST, :HST, presence: true
end
