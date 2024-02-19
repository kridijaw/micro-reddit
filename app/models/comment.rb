class Comment < ApplicationRecord
  validates :url, presence: true
  belongs_to :user
  belongs_to :post
end
