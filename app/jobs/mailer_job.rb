class MailerJob < ApplicationJob
  queue_as :mailer

  def perform(*args)
    p args
  end
end
