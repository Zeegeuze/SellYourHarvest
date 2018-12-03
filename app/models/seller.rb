class Seller < ApplicationRecord
  has_many :products, dependent: :destroy
  validates :contact_person, presence: true
  validates :address, uniqueness: true, presence: true
end
