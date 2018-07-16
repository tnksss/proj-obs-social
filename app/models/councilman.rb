class Councilman < ApplicationRecord
  mount_uploader :image, ImageUploader
  enum political_position: [:opposition, :situation]
  validates :name, :nickname, presence: true, uniqueness: true
  validates :political_position, :political_party, presence: true

  
  has_many :projects
  has_many :session_councilmen
  has_many :meetings, through: :session_councilmen


  mount_uploader :avatar, AvatarUploader

end
