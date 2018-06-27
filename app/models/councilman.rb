class Councilman < ApplicationRecord
  mount_uploader :image, ImageUploader
  enum political_position: [:opposition, :situation]
  validates :name, presence: true, uniqueness: true
  validates :nickname, presence: true
  has_many :projects
  has_many :session_councilmen
  has_many :sessions, through: :session_councilmen


  mount_uploader :avatar, AvatarUploader
end
