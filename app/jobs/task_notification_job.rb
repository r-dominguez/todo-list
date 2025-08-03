class TaskNotificationJob < ApplicationJob
    queue_as :default
  
    def perform(task_id)
      task = Task.find(task_id)
      TaskMailer.with(task: task).reminder.deliver_now
    end
  end