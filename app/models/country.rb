class Country < ApplicationRecord
    has_many :provinces, dependent: :destroy
    validates :name, presence: true, length: {maximum: 50}, uniqueness: true
end
