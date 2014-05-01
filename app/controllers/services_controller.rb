class ServicesController < InheritedResources::Base
  belongs_to :product

  before_filter :authenticate_user!

  actions :new, :create

  def create
    create!(notice: "La compra se realizo con exito!") { products_path }
  end

  def permitted_params
    params.permit(service: [:from, :to, :address, :po_box, :zip_code, :state, :city,
      :between, :user_id, :body])
  end

end
