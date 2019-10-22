

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
  def request
    # @owner = params[:owner]
    # @monster = params[:monster]
    # @requester = params[:requester]

    # mail(to: @owner.email, subject: "Requested Monster Reservation from #{@requester.name.capitalize}")
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
end
