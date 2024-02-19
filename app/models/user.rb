class User < ApplicationRecord
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 12 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 255 }
  validates :password, presence: true, length: { minimum: 6 }
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
