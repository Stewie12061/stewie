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


    @services = Service.all

    
    @fun_facts = Project.all

    @about =[
      {
        title: "DESIGN",
        value: 90,
      },
      {
        title: "DEVELOPMENT",
        value: 60,
      },
      {
        title: "MARKETING",
        value: 75,
      },
      {
        title: "SEO",
        value: 95,
      }
      
    ]
    @about_text =[
      {
        text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt
          ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
          aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
          fugiat nulla pariatur. Sed quia non numquam eius modi tempora."
      },
      {
        text: "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia
        consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem
        ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut
        labore et dolore magnam aliquam quaerat voluptatem."
      }
    ]

    @socials =[
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
    ]
    @nav =[
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
    ]
  end
end
