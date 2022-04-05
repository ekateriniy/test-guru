class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: :author_id

  has_many :questions, dependent: :destroy
  has_many :tests_users
  has_many :users, through: :tests_users, dependent: :destroy

  def self.titles_order_by_category_desc(category)
    joins('JOIN categories ON tests.category_id = categories.id')
      .where('categories.title = ?', category)
      .order(id: :desc)
      .pluck(:title)
  end
end
