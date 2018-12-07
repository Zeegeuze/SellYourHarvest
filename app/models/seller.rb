class Seller < ApplicationRecord
  has_many :products, dependent: :destroy
  has_many :orders, through: :products
  validates :contact_person, presence: true
  validates :address, uniqueness: true, presence: true
end
