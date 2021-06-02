class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORY = %w(chinese italian japanese french belgian)
  validates :name, presence: true
  validates :category, presence: true
  validates :phone_number, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
