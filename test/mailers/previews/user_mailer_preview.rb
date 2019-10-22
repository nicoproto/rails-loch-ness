class UserMailerPreview < ActionMailer::Preview
  def pending
    user = User.first
    # This is how you pass value to params[:user] inside mailer definition!
    UserMailer.with(user: user).pending
  end
end
