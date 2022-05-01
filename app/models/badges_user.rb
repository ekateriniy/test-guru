class BadgesUser < ApplicationRecord
  belongs_to :user
  belongs_to :badge

  def self.user_bage_amount(user, badge)
    where(user_id: user.id, badge_id: badge.id)
  end
end
