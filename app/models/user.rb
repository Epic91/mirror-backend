class User < ApplicationRecord
    has_many :entries

    validates :username, presence: true, uniqueness: true, length: {in: 5..15}
    validates :password, presence: true, length: {in: 5..10}
    validates :email, presence: true, uniqueness: true
end