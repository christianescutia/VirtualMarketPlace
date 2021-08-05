class User < ApplicationRecord
    validates :user_id, presence: true, uniqueness: true
    validates :password, presence: true
    validates :role, presence: true
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :address, presence: true
    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address"}
    validates :phone, presence: true
end
