class Product < ApplicationRecord
    belongs_to :shop
    validates :name,  presence: true
    validates :price,  presence: true
end
