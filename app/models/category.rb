class Category < ApplicationRecord
  has_many :tests, dependent: :destroy

  scope :by_title, -> { order(:title) }
end
