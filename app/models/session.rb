class Session < ApplicationRecord
  has_many :projects
  has_many :session_councilmen, inverse_of: :session  
  has_many :councilmen, :through => :session_councilmen

  accepts_nested_attributes_for :councilmen

  validates :date, presence: true
  validates :date, uniqueness: true

  def formatted_date
    date.to_time.strftime("%d/%m/%Y")
  end
end
