class Message
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :email, :subject, :body

  validates :email, :body, presence: true
  validate :email_format, format: { with: Devise::email_regexp }, allow_blank: true
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

  def send_message
    Notifier.condolence.deliver
  end

  private

  def email_format
    if email.present?
      invalid_emails = []

      email.split(",").each do |e|
        invalid_emails << e unless e =~ Devise.email_regexp
      end

      if invalid_emails.present?
        errors.add(:email, "The following emails are invalids: #{invalid_emails.join(",")}")
      end
    end
  end
end
