class Vote < ApplicationRecord
  enum vote: [:favoravel, :contrario, :abstencao, :ausente]
  belongs_to :project
  belongs_to :councilman
end
