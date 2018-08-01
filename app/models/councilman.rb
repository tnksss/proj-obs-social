class Councilman < ApplicationRecord
  
  scope :search, -> (query) { where("name like ?", "%#{query}%")}

  mount_uploader :image, ImageUploader
  enum political_position: [:opposition, :situation]
  validates :name, :nickname, presence: true, uniqueness: true
  validates :political_position, :political_party, presence: true

  
  has_many :projects
  has_many :session_councilmen
  has_many :meetings, through: :session_councilmen


  mount_uploader :avatar, AvatarUploader


  def self.political_position_attributes_for_select
    political_positions.map do |political_position, _|
      [I18n.t("activerecord.attributes.#{model_name.i18n_key}.
              political_positions.#{political_position}"), political_position]
    end
  end

end
