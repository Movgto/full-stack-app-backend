class User < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :items, through: :reservations

  validates :username, uniqueness: true
end
