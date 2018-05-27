class Vote < ApplicationRecord
  belongs_to :project
  belongs_to :councilman
end
