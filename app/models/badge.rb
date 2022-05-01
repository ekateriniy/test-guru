class Badge < ApplicationRecord
  enum rule: { attempt: 0, category: 1, level: 2 }

  has_many :badges_users
  has_many :users, through: :badges_users, dependent: :destroy

  validates_presence_of :title, :image, :rule, :value
end
