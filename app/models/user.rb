class User < ApplicationRecord
  has_many :products, foreign_key: 'seller_id'
  has_many :products, foreign_key: 'buyer_id'
  has_many :biddings
  has_many :watchlists

  validates :full_name, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :password_digest, length: {minimum: 8}
end
