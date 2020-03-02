class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates :title, presence: true, length:  { in: 2..25 }
end
