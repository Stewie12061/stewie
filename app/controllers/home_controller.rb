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
    # ContactMailer.with(info: contact_params).contact.deliver_later
    # MailerJob.perform_later(contact_params)
    Job.create(args:contact_params, job_type: :mailer_job)
    redirect_to root_path
  end
  private
  def contact_params
    params.require(:contact).permit(:subject, :name, :email, :phone, :message)
  end

  def welcome
    WelcomeMailer.with(info: welcome_params).welcome.deliver_later
    redirect_to root_path
  end
  private
  def welcome_params
    params.require(:welcome).permit(:subject, :name, :email, :phone, :message)
  end
end
