class Product < ApplicationRecord
    belongs_to :shop
    validates :name,  presence: true
    validates :price,  presence: true
    mount_uploader :image, ImageUploader
end
