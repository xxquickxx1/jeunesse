class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.notify.subject
  #
  def notify(params)
     @message = params["contact"][:message]
    @from = params["contact"][:email]
    @phone = params["contact"][:phone_number]
    @name = params["contact"][:full_name]
    @company = params["contact"][:company]

    mail to: "thomas.webdesign@yahoo.com", from: "#{@from}", subject: "#{@name} has contacted us."
  end
end
