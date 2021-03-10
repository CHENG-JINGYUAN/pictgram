class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :name, length: { maximum: 15 }
  validates :password, length: { in: 8..32 }
  validates :password, format: { with: /\A[a-zA-Z0-9]+\z/}
  validates :email, format: { with: /\A[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z0-9]+\z/}
  
  
  has_secure_password
  
  has_many :topics
  has_many :favorites
  has_many :fatorite_topics, through: :favorites, source: 'topic'
  
end
