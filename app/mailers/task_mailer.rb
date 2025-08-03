class TaskMailer < ApplicationMailer
    layout 'mailer'

    def reminder(task)
      @task = task
      mail(
        to: task.user.email,
        subject: "⏰ Recordatorio: Tarea '#{task.title}' en breve"
      )
    end
  end