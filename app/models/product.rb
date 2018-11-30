class Product < ApplicationRecord
  belongs_to :seller
  has_many :orders
  validates :name, :amount, presence: true
  validates :stars, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :delivery_option, inclusion:
    { in: ['pick_up', 'pick yourself', 'delivery'] }
end
