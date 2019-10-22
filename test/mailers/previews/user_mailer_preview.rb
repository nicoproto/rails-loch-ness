class UserMailerPreview < ActionMailer::Preview
  def pending
    user = User.first
    monster = Monster.first
    # This is how you pass value to params[:user] inside mailer definition!
    UserMailer.with(user: user, monster: monster).pending
  end
end
