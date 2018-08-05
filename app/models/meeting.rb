class Meeting < ApplicationRecord
  has_many :projects, dependent: :destroy

  has_many :session_councilmen, inverse_of: :meeting
  accepts_nested_attributes_for :session_councilmen

  has_many :councilmen, :through => :session_councilmen, dependent: :destroy


  validates :date, presence: true, uniqueness: true
  
  validate :start_session, :end_session, :start_date_before_end_date

  def start_date_before_end_date
    if self.start_session > self.end_session
      errors.add(:start_session, "Início da sessão deverá ser anterior ao final.")
      errors.add(:end_session, "Final da sessão deverá ser posterior ao início.")
    end
  end

  def formatted_date
    date.to_time.strftime("%d/%m/%Y")
  end
end
