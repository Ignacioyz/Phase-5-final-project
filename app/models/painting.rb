class Painting < ApplicationRecord
    belongs_to :cart, optional: true
    has_one_attached :image

    def image_url
        image.url
    end
end
