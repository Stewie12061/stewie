class HomeController < ApplicationController
  def index

    @testimonials = Testimonial.all

    @services = Service.all
    
    @fun_facts = Project.all

    @about = About.all
    
    @about_text = AboutText.all

    @socials = Social.all
    
    @nav = Nav.all
  end

  def contact
    
  end
end
