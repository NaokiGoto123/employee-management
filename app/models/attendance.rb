class Attendance < ApplicationRecord
  belongs_to :user

  enum absence_type: { sickness: 0, vacation: 1, personal: 2 }

  validates :absence_type, presence: true, unless: :worked

  validates :date, uniqueness: { scope: :user_id, message: "You have already created an attendance for today." }

  validate :previous_day_attendance

  private

  def previous_day_attendance
    # Skip validation for the first day of attendance
    return if date == user.created_at.to_date

    previous_day = date - 1.day

    unless user.attendances.where(date: previous_day).exists?
      errors.add(:date, "can't be created because the attendance for the previous day is missing.")
    end
  end
end
