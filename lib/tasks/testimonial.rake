namespace :testimonial do
  desc "create data service"
  task init: :environment do
    Testimonial.destroy_all

    Testimonial.create([
      {
        content: "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni
        dolores<br /> eos qui ratione voluptatem sequi nesciunt.",
        author: "JOHN DOE"
      },
      {
        content: "Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia
        non numquam eius<br /> modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",
        author: "JOHN SMITH"
      },
      {
        content: "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni
        dolores<br /> eos qui ratione voluptatem sequi nesciunt.",
        author: "JOHN DOE"
      },
      {
        content: "Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia
        non numquam eius<br /> modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",
        author: "JOHN SMITH"
      }
    ])
  end
end
