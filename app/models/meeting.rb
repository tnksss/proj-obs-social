class Meeting < ApplicationRecord
  has_many :projects

  has_many :session_councilmen, inverse_of: :meeting
  accepts_nested_attributes_for :session_councilmen

  has_many :councilmen, :through => :session_councilmen


  validates :date, presence: true
  validates :date, uniqueness: true

  def formatted_date
    date.to_time.strftime("%d/%m/%Y")
  end
end
