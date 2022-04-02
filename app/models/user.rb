class User < ApplicationRecord
  def tests_on_level(level)
    Test.joins('JOIN users ON tests.author_id = users.id').where(author_id: self.id, level: level)
  end
end
