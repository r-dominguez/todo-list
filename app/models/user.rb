class User < ApplicationRecord
  has_many :tasks, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :email, :password, presence: true

  scope :admins, -> { where(admin: true) }
end
