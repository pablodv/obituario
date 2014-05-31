module ObituriesHelper
  def search_values(params, field)
    params[:search].present? ? params[:search][field] : ''
  end
end
