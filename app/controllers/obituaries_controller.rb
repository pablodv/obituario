class ObituariesController < InheritedResources::Base
  actions :index, :show

  protected

  def collection
    @obituaries ||= if params[:search].present?
      query = {}

      query.merge!({ first_name: params[:search][:first_name] }) if params[:search][:first_name].present?
      query.merge!({ last_name: params[:search][:last_name] }) if params[:search][:last_name].present?
      query.merge!({ created_at: params[:search][:created_at].to_time }) if params[:search][:created_at].present?

      end_of_association_chain.where(query)
    else
      end_of_association_chain.today.order('created_at DESC')
    end
  end
end
