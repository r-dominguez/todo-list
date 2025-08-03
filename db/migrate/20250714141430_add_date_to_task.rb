class AddDateToTask < ActiveRecord::Migration[8.0]
  def change
    add_column :tasks, :task_date, :datetime, null: false
  end
end
