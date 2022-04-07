class Category < ApplicationRecord
  has_many :tests, dependent: :destroy

  validates :title, presence: true, length: { maximum: 100 }

  default_scope { order(:title) }
end
