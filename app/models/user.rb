class User < ApplicationRecord
  validates :full_name, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :password_digest, length: {minimum: 8}
end
