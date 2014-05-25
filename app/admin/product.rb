ActiveAdmin.register Product do

  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :title
      f.input :summary
      f.input :description
      f.input :price
      f.input :kind, as: :select, collection: %w(packet crown bouquet)
    end

    f.actions
  end
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  permit_params :name, :title, :summary, :description, :price, :kind
end
