class SessionCouncilman < ApplicationRecord
  belongs_to :meeting
  belongs_to :councilman

  validate :arrival, :leaving, :arrival_before_leaving



  def arrival_before_leaving
    if self.arrival > self.leaving
      errors.add(:arrival, "Chegada deverá ser antes da Saída.")
      errors.add(:leaving, "Saída deverá ser depois da Chegada.")
    end
  end
end
