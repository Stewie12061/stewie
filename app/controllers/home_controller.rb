class HomeController < ApplicationController
  def index
    @testimonials = [
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
    ]

    @services =[
      {
        icon: "fas fa-pencil-alt",
        title: "Design",
        description: "Excepteur sint occaecat cupidatat non proident, sunt in culpa."
      },
      {
        icon: "fas fa-cogs",
        title: "Development",
        description: "Excepteur sint occaecat cupidatat non proident, sunt in culpa."
      },
      {
        icon: "fas fa-camera-retro",
        title: "Photography",
        description: "Excepteur sint occaecat cupidatat non proident, sunt in culpa."
      },
      {
        icon: "fas fa-search",
        title: "Seo",
        description: "Excepteur sint occaecat cupidatat non proident, sunt in culpa."
      }
    ]
  end
end
