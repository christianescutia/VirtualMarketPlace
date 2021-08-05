class User < ApplicationRecord
    validates :user_id, presence: true, uniqueness: true
    validates :password, presence: true
    validates :role, presence: true
    validates :firstname, presence: true
    validates :lastname, presence: true
    validates :address, presence: true
    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address"}
    validates :phone_num, presence: true
end
