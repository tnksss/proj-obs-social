class Session < ApplicationRecord
  has_many :projects

  def formatted_date
    date.to_time.strftime("%d/%m/%Y")
  end
end
