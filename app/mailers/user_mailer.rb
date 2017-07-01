class UserMailer < ApplicationMailer
  default from: "ticket@email.com"

  def purchase_mail(email, ticket, event)
    body = "You have bougth #{ticket.count} tickt with type #{ticket.ticket_type.name} for event #{event.name}"
    mail(to: email, subject: 'Email from ticket.com', body: body)
  end
end
