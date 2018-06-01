class Project < ApplicationRecord
  enum result: [:approved, :retired, :postponed, :rejected, :filed]
  belongs_to :session
  belongs_to :project_kind
  belongs_to :councilman
end
