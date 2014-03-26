class Services::CrownsController < Services::CoreController
  def permitted_params
    params.permit(crown: [:from, :to, :address, :po_box, :zip_code, :state, :city,
      :between, :kind, :body])
  end

end
