class Services::PacketsController < Services::CoreController
  def permitted_params
    params.permit(packet: [:from, :to, :address, :po_box, :zip_code, :state, :city,
      :between, :kind, :body])
  end

end
