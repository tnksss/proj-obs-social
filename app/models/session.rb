class Session < ApplicationRecord
  has_many :projects

  validates :date, presence: true
  validates :date, uniqueness: true

  def formatted_date
    date.to_time.strftime("%d/%m/%Y")
  end
end
