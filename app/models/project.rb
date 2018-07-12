class Project < ApplicationRecord
  enum result: [:approved, :retired, :postponed, :rejected, :filed]
  belongs_to :meeting
  belongs_to :project_kind
  belongs_to :councilman

  has_many :projects

  has_many :votes, inverse_of: :project
  accepts_nested_attributes_for :votes

  has_many :councilmen, :through => :votes
  
end
