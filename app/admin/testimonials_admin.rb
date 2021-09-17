Trestle.resource(:testimonials) do
  menu do
    item :testimonials, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :content
    column :author
    column :created_at, align: :center
    column :updated_at, align: :center
    actions

  end

  # Customize the form fields shown on the new/edit views.
  #
  form dialog:true do |testimonial|
    row do 
      text_area :content, class: 'text_area', placeholder: 'write here'
    end
    text_field :author, placeholder: 'Author'
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:testimonial).permit(:name, ...)
  # end
end
