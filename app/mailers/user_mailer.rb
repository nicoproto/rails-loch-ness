

class UserMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.pending.subject
  #
  def pending
    @user = params[:user]
    @monster = params[:monster]

    mail(to: @user.email, subject: 'Pending Monster Reservation from Loch Ness!')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.request.subject
  #
  def accept
    @user = params[:user]
    @monster = params[:monster]
    @owner = params[:owner]

    mail(to: @user.email, subject: 'Requested Monster Reservation')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.confirmation.subject
  #
  def confirmation
    @user = params[:user]
    @monster = params[:monster]

    mail(to: @user.email, subject: 'Confirmed Monster Reservation from Loch Ness!')
  end

  def welcome
    @user = params[:user]
    mail(to: @user.email, subject: 'Welcome to Loch Ness!')
  end
end
