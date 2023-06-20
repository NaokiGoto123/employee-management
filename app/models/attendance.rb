class Attendance < ApplicationRecord
  belongs_to :user

  enum absence_type: { sickness: 0, vacation: 1, personal: 2 }

  validates :absence_type, presence: true, unless: :worked
end
