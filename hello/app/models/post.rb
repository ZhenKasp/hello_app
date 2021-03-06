class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  has_attached_file :image,
    styles: { large: "600x600", medium: "300x300>", thumb: "150x150>" },
    default_url: "/images/:style/missing.png"

  validates :title, presence: true, length: { in: 2..25 } ,uniqueness: true
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
