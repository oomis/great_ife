class Page < ApplicationRecord
    belongs_to :category
    has_many :pages

    mount_uploader :image, ImageUploader
    mount_uploaders :otherImages, OtherImagesUploader
    serialize :otherImages, JSON
end
