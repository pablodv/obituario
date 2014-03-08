class Notifier < ActionMailer::Base
  default from: "from@example.com"

  def notification(message, obituary)
    @body     = message[:body]
    @obituary = obituary

    mail(to: message[:email].split(","))
  end
end
