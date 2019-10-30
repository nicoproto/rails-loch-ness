class UserMailer < ApplicationMailer
  def pending
    @user = params[:user]
    @monster = params[:monster]

    mail(to: @user.email, subject: 'Pending Monster Reservation from Loch Ness!')
  end

  def accept
    @user = params[:user]
    @monster = params[:monster]
    @owner = params[:owner]

    mail(to: @user.email, subject: 'Requested Monster Reservation')
  end

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
