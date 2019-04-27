class Payment < ApplicationRecord
  belongs_to :building
  validates :unit, presence: true
  validates :date, presence: true
  validates :amount, presence: true
  validates :name, presence: true
end
