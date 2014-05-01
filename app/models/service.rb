class Service < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  validates :from, :to, :address, :po_box, :zip_code, :state, :city, :between,
            :user_id, :body, :product, presence: true

end
