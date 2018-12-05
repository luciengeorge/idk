# Preview all emails at http://localhost:3000/rails/mailers/confirmation_mailer
class ConfirmationMailerPreview < ActionMailer::Preview
  def confirmation_instructions
      user = User.first
      ConfirmationMailer.confirmation_instructions(user)
    end
end
