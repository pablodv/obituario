class Service < ActiveRecord::Base
  belongs_to :user

  after_initialize :set_kind

  validates :from, :to, :address, :po_box, :zip_code, :state, :city, :between,
            :user_id, :kind, :body, presence: true

  private

  def set_kind
  end
end
