class Services::BouquetsController < Services::CoreController
  def permitted_params
    params.permit(bouquet: [:from, :to, :address, :po_box, :zip_code, :state, :city,
      :between, :kind, :body])
  end
end
