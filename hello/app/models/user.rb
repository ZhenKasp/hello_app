class User < ApplicationRecord
  #has_one :user_profile
  #accepts_nested_attributes_for :user_profile
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_many :posts,    dependent: :destroy
  has_many :comments, dependent: :destroy
end
