class Answer < ApplicationRecord
  belongs_to :question

  validates :body, presence: true
  validate :validate_quantity, on: :create

  scope :correct, -> { where(correct: true) }

  private

  def validate_quantity
    errors.add(:answers_quantity, 'There must be 1 to 4 answers per question') if question.answers.count >= 4
  end
end
