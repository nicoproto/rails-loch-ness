
class UserMailerPreview < ActionMailer::Preview
  def pending
    user = User.first
    monster = Monster.first

    UserMailer.with(user: user, monster: monster).pending
  end

  def confirmation
    user = User.first
    monster = Monster.first

    UserMailer.with(user: user, monster: monster).confirmation
  end

  def accept
    monster = Monster.first
    user = User.last
    owner = User.first

    UserMailer.with(owner: owner, user: user, monster: monster).accept
  end

  def welcome
    user = User.first
    UserMailer.with(user: user).welcome
  end
end
