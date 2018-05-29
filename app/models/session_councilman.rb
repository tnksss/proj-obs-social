class SessionCouncilman < ApplicationRecord
  belongs_to :session
  belongs_to :councilman
  enum being: [:present, :absent]
end
