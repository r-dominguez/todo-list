# spec/jobs/task_notification_job_spec.rb
require 'rails_helper'

describe TaskNotificationJob, type: :job do
  
  let(:task) { create(:task, task_date: 1.hour.from_now) }

  it 'sends email at the right time' do
    Timecop.freeze(30.minutes.before(task.task_date)) do
      expect {
        described_class.perform_now(task.id)
      }.to change { ActionMailer::Base.deliveries.count }.by(1)
    end
  end

  # describe 'send mail' do
  #   before { described_class.new.perform(task.id) }

  #   it 'perform job send a email' do
  #     expect(ActionMailer::Base.deliveries.count).to eq(1)
  #   end

  #   it 'check the user email' do
  #     expect(ActionMailer::Base.deliveries.first.to).to eq([user.email])
  #   end
  # end
end