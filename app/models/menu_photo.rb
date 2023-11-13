class MenuPhoto < ApplicationRecord
    has_many :menu_photos, dependent: :destroy
    accepts_nested_attributes_for :menu_photos, allow_destroy: true
end
