class Councilman < ApplicationRecord
  mount_uploader :image, ImageUploader
  enum political_position: [:opposition, :situation]
  validates :name, presence: true, uniqueness: true
  validates :nickname, presence: true
  has_many :projects
  
  before_save :update_image_attributes

  private
    def update_image_attributes
      
    end
    
end
