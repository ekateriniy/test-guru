module BadgesHelper
  def badge_amount(user, badge)
    amount = user.badges(badge).count
    amount.zero? ? amount : ''
  end
end
