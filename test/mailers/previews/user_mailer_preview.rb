
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
  # def request
  #   requester = User.first
  #   monster = Monster.first
  #   owner = User.last

  #   UserMailer.with(owner: owner, monster: monster, requester: requester).request
  # end
end
