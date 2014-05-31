class Obituary < ActiveRecord::Base
  belongs_to :user

  validates :first_name, :last_name, :died_at, :worship, :sex, :message, :nickname,
    presence: true
  validates :age, presence: true, numericality: { only_integer: true, greater_than: 0 }

  scope :today, where("created_at >= ? AND created_at <= ?", Time.now.beginning_of_day, Time.now.end_of_day)

  def full_name
    first_name.titleize + last_name.titleize
  end

  def description
    "#{user.first_name} #{user.last_name} lamenta informarle a través de obituarios online que el ser querido #{full_name} falleció en el día #{died_at.strftime("%d/%m/%Y")}. Se lo invita a visitar la página para realizar un homenaje."
  end

  def to_s
    "#{first_name} #{last_name}"
  end
end
