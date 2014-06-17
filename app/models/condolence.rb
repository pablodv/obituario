class Condolence < ActiveRecord::Base
  belongs_to :user
  belongs_to :obituary

  validates :user_id, :obituary_id, :body, :first_name, :last_name, presence: true
end
