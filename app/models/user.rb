require 'digest/sha1'

class User < ApplicationRecord

  has_many :test_passages
  has_many :tests, through: :test_passages, dependent: :destroy
  has_many :created_tests, class_name: 'Test', foreign_key: :author_id, dependent: :destroy

  validates :name, presence: true, length: {maximum: 100}
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'is in wrong format' }

  has_secure_password

  def tests_on_level(level)
    tests.where(level: level)
  end

  def test_passage(test)
    test_passages.order(id: :desc).find_by(test_id: test.id)
  end
end
