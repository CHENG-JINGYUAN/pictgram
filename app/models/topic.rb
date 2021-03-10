class Topic < ApplicationRecord
  validates :user_id, presence: true
  validates :description, presence: true
  validates :image, presence: true
  
  belongs_to :user
  mount_upoader :image, ImageUploader
  
  has_many :favorites
  has_many :favorites_users, through: :favortites, source: 'uesr'
  
end
