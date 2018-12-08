class Product < ApplicationRecord
  belongs_to :seller
  has_many :orders
  validates :name, :amount, presence: true
  validates :delivery_option, inclusion:
    { in: ['Pick up', 'Pick on the field', 'Delivery'] }
  validates :stars, inclusion: 1..5
end
