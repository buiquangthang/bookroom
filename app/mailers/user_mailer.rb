class UserMailer < ApplicationMailer
  default from: "noreplythanhle@gmail.com"

  def new_invite_email(recipient)
    binding.pry
    @recipient = recipient
    mail(
      to: @recipient,
      subject: "New comment on the Subvisual blog"
    )
  end
end
