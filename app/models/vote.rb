class Vote < ApplicationRecord
  enum vote: [:approved, :retired, :postponed, :rejected, :filed]
  belongs_to :project
  belongs_to :councilman
end
