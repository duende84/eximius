class ContactMailer < ActionMailer::Base
  default :from => "notifications@example.com"

  def contact_email(contact)
    @contact = contact
    mail(:to => 'eximiusst@gmail.com', :subject => "#{contact.subject}")
  end
end
