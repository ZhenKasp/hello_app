class Comment < ApplicationRecord
  belongs_to :post
  has_many :user, through: :post
end
