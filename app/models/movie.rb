class Movie < ApplicationRecord
  has_many :rentals
  has_many :customers, through: :rentals

  validates :title, :inventory, presence: true
end