class Services::PacketsController < Services::CoreController

  def new
    new!{ resource.level = params[:level].to_i }
  end

  def permitted_params
    params.permit(packet: [:from, :to, :address, :po_box, :zip_code, :state, :city,
      :between, :kind, :body, :level])
  end

end
