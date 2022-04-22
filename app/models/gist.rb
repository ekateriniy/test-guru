class Gist < ApplicationRecord
  belongs_to :user
  belongs_to :question

  validates :url, presence: true

  def shorted_question
    question.body.length > 25 ? question.body[0..26] : question.body
  end

  def url_hash
    url.split('.com/')[1]
  end
end
