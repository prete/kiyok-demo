class Province < ApplicationRecord
    belongs_to :country
    validates :name, presence: true, length: {maximum: 50}, uniqueness: true
end
