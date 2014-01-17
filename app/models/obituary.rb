class Obituary < ActiveRecord::Base
  belongs_to :user

  validates :first_name, :last_name, :died_at, :worship, :sex, :message, :nickname,
    presence: true
  validates :age, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
