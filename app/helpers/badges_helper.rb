module BadgesHelper
  def badge_amount(user, badge)
    BadgesUser.user_bage_amount(user, badge).size
  end
end
