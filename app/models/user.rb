class User < ApplicationRecord
  has_many :test_passages
  has_many :tests, through: :test_passages, dependent: :destroy
  has_many :created_tests, class_name: 'Test', foreign_key: :author_id, dependent: :destroy

  validates :name, presence: true, length: {maximum: 100}
  validates :email, presence: true, length: {maximum: 100}, uniqueness: { case_sensitive: false }

  def tests_on_level(level)
    tests.where(level: level)
  end
end
