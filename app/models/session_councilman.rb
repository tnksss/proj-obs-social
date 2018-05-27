class SessionCouncilman < ApplicationRecord
  belongs_to :session
  belongs_to :councilman
end
