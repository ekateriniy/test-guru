class Badge < ApplicationRecord
  enum attribute: { attempt: 0, category: 1, level: 3 }

  has_many :badges_users
  has_many :users, through: :badges_users, dependent: :destroy

  validate_presence_of :title, :image, :attribute, :value
end
