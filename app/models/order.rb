class Order < ApplicationRecord
  belongs_to :user
  belongs_to :trainer
  monetize :amount_cents
  validates :address, presence: true
  validates :postcode, presence: true
end
