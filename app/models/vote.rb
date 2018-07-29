class Vote < ApplicationRecord
  enum vote: [:favorable, :contrary, :abstention, :absent]
  enum result: [:approved, :retired, :postponed, :rejected, :filed]
  belongs_to :project
  belongs_to :councilman
end
