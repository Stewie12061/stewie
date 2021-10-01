class ContactMailer < ApplicationMailer
    def contact
        @contact = OpenStruct.new(params[:info])
        mail(to: @contact.email, subject: "1231243")
    end
end
