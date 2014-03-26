class Services::CoreController < InheritedResources::Base
  before_filter :authenticate_user!

  actions :new, :create

  def create
    create!(notice: "La compra se realizo con exito!") { services_path }
  end

  protected

  def begin_of_association_chain
    current_user
  end
end
