class Dashboard::ObituariesController < InheritedResources::Base
  belongs_to :user

  before_filter :authenticate_user!

  def create
    create!{ dashboard_user_obituaries_path(current_user) }
  end

  def update
    update!{ dashboard_user_obituaries_path(current_user) }
  end

  def destroy
    destroy!{ dashboard_user_obituaries_path(current_user) }
  end

  def permitted_params
    params.permit(obituary: [:first_name, :last_name, :died_at, :worship, :sex,
      :message, :nickname, :age])
  end
end
