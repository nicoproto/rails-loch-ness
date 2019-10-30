module Email
  class UserWelcome
    def self.call(user)
      UserMailer.with(user: user).welcome.deliver_now
    end
  end

  class RenterPending
    def self.call(user, monster)
      UserMailer.with(user: user, monster: monster).pending.deliver_now
    end
  end

  class OwnerAccept
    def self.call(owner, monster, user)
      UserMailer.with(owner: owner, monster: monster, user: user).accept.deliver_now
    end
  end

  class RenterConfirmation
    def self.call(user, monster)
      UserMailer.with(user: user, monster: monster).confirmation.deliver_now
    end
  end
end
