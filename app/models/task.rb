class Task < ApplicationRecord
  enum :notification_preference, { none: 0, thirty_minutes: 1, one_hour: 2,twelve_hours: 3}, default: :none, prefix: true

  belongs_to :user
  
  validates :title, :description, :task_date, presence: true
  validates :title, length: { maximum: 100 }
  validates :description, length: { maximum: 1000 }

  scope :completed, -> { where(completed: true) }

  def mark_as_completed!
    update!(completed: true)
  end

end
