namespace :social do
  desc "create data service"
  task init: :environment do
    Social.destroy_all

    Social.create([
      {
        icon: "fab fa-facebook-f"
      },
      {
        icon: "fab fa-twitter"
      },
      {
        icon: "fab fa-google-plus-g"
      },
      {
        icon: "fab fa-linkedin-in"
      },
      {
        icon: "fab fa-dribbble"
      }
    ])
  end
end
