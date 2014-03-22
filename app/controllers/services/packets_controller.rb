class Services::PacketsController < InheritedResources::Base
  before_filter :authenticate_user!

  actions :new, :create

  def permitted_params
    params.permit(packet: [:from, :to, :address, :po_box, :zip_code, :state, :city,
      :between, :kind, :body])
  end

  protected

  def begin_of_association_chain
    current_user
  end
end
