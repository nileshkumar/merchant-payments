class Merchant < ApplicationRecord
  has_many :orders

  validates :reference, presence: true
  validates :email, presence: true
  validates :minimum_monthly, presence: true
  validates :disbursement_frequency, presence: true
end
