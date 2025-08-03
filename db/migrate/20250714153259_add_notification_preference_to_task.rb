class AddNotificationPreferenceToTask < ActiveRecord::Migration[8.0]
  def change
    add_column :tasks, :notification_preference, :integer, default: 0
  end
end
