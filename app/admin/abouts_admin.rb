Trestle.resource(:abouts) do
  menu do
    item :abouts, icon: "fa fa-rocket"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :title
    column :value
    column :created_at, align: :center
    column :updated_at, align: :center
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form dialog:true do |about|
    text_field :title, placeholder: 'title'
    text_field :value, placeholder: 'value'
  
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:about).permit(:name, ...)
  # end
end
