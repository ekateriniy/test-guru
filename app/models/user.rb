class User < ApplicationRecord
  has_many :tests_users
  has_many :tests, through: :tests_users, dependent: :destroy
  has_many :created_tests, class_name: 'Test', foreign_key: :author_id, dependent: :destroy

  def tests_on_level(level)
    Test.where(level: level)
      .joins('JOIN tests_users ON tests_users.test_id = tests.id')
      .where(tests_users: { user_id: id })
  end
end
