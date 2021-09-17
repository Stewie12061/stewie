Trestle.resource(:projects) do
  menu do
    item :projects, icon: "fa fa-shield"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :icon
    column :value
    column :text
    column :created_at, align: :center
    column :updated_at, align: :center
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form dialog:true do |project|
    row do 
      col(sm:8){
        text_field :icon, placeholder: 'Icon'
      }
      col(sm:4){
        text_field :value, placeholder: 'Value'
      }
    end
    text_area :text, placeholder: 'Text'
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:project).permit(:name, ...)
  # end

end
