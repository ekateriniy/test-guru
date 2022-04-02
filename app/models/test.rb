class Test < ApplicationRecord
  def self.order_by_category_desc(category)
    category_id = Category.find_by(title: category).id
    self.joins('JOIN categories ON tests.category_id = categories.id').where(category_id: category_id).order(id: :desc)
  end
end
