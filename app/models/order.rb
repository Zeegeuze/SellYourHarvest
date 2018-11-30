class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :product
  validates :size, uniqueness: true, presence: true
end
