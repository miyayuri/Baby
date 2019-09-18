class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :hosps, dependent: :destroy
  has_many :hosp_reviews, dependent: :destroy
  has_many :hosp_likes, dependent: :destroy
  has_many :recommends, dependent: :destroy
  has_many :recommend_likes, dependent: :destroy
  has_many :regrets, dependent: :destroy

  validates :name, presence: true
  validates :nickname, presence: true
  validates :tel, presence: true

end
