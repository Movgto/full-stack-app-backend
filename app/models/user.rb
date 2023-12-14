class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    has_many :reservations, foreign_key: :username_id
end
