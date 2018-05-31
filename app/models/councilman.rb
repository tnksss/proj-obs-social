class Councilman < ApplicationRecord
  enum political_position: [:opposition, :situation]
  validates :name, presence: true, uniqueness: true
  validates :nickname, presence: true
  has_many :projects
end
