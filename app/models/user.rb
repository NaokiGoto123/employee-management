class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: { admin: 0, manager: 1, staff: 2}

  belongs_to :manager, class_name: "User", foreign_key: "manager_id", optional: true

  has_many :attendances
end
