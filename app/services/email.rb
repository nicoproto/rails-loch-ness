module Email
  class UserWelcome
    def self.call(user)
      UserMailer.with(user: user).welcome.deliver_now
    end
  end
  class RenterPending; end
  class OwnerAccept; end
  class RenterConfirmation; end
end
