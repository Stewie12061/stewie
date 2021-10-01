namespace :nav do
  desc "create date service"
  task init: :environment do
    Nav.destroy_all

    Nav.create([
      {
        title:"Home" , href:"#"
      },
      {
        title:"Services", href:"#"
      },
      {
        title:"About", href:"#"
      },
      {
        title:"Testimonial", href:"#"
      },
      {
        title:"Work", href:"#"
      },
      {
        title:"Contact", href:"#contact-form"
      }
    ])
  end
end
