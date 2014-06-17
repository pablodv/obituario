class CondolencesController < InheritedResources::Base
  before_filter :authenticate_user!

  belongs_to :obituary

  actions :new, :create, :show

  respond_to :js

  def permitted_params
    params.permit(condolence: [:user_id, :first_name, :last_name, :body])
  end

end
