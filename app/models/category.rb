class Category < ApplicationRecord
  has_many :tests, dependent: :destroy

  scope :by_title, -> { order(:title) }

  validates :title, presence: true, length: { maximum: 100 }
end
