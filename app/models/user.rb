class User < ApplicationRecord
  def tests_on_level(level)
    Test.joins('JOIN tests_users ON tests_users.test_id = tests.id')
      .where('tests.level = ? AND tests_users.user_id = ?', level, id)
  end
end
