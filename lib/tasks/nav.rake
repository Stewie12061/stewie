namespace :nav do
  desc "create date service"
  task init: :environment do
    Nav.destroy_all

    Nav.create([
      {
        title:"Home"
      },
      {
        title:"Services"
      },
      {
        title:"About"
      },
      {
        title:"Testimonial"
      },
      {
        title:"Work"
      },
      {
        title:"Contact"
      }
    ])
  end
end
