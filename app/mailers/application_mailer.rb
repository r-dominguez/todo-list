class ApplicationMailer < ActionMailer::Base
  default from: 'admin@todo-list.com'
  layout 'mailer'
end
