Trestle.resource(:services) do
  menu do
    item :services, icon: "fa fa-bolt"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :icon
    column :title
    column :description
    column :created_at, align: :center
    column :updated_at, align: :center
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form dialog:true do |service|
    row do
      col(md:6){
        text_field :icon, placeholder: 'Icon'
      }
      col(md:6){
        text_field :title, placeholder: 'Title'
      }
    end
    text_area :description, placeholder: 'Description'

  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:service).permit(:name, ...)
  # end
end
