class Post < ApplicationRecord
 
   mount_uploader :avatar, AvatarUploader

  #validates :content,  :presence => true
  validates :title, :presence => true
  validates_presence_of :avatar
  has_many :comments, dependent: :destroy
  belongs_to :user
end
