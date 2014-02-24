class Notifier < ActionMailer::Base
  default from: "from@example.com"

  def notification(message)
    @body  = message[:body]

    mail(to: message[:email].split(","))
  end
end
