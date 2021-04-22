ActiveAdmin.register Category do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
 #permit_params :name, :description, :image

 form do |f|
  f.semantic_errors # shows errors on :base
  f.inputs          # builds an input field for every attribute
  f.input :image, as: :file, hint: f.object.image.present? ? image_tag(f.object.image) : ""
  f.actions         # adds the 'Submit' and 'Cancel' buttons
end
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
