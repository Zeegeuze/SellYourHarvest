class Order < ApplicationRecord
  belongs_to :product
  validates :size, uniqueness: true, presence: true
end
