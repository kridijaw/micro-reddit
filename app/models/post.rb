class Post < ApplicationRecord
  validates :title, presence: true, length: { maximum: 255 }
  validates :content, presence: true
  belongs_to :user
  has_many :comments, dependent: :destroy
end
