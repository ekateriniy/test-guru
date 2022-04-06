class Answer < ApplicationRecord
  belongs_to :question

  scope :correct, -> { where(correct: true) }

  validates :body, presence: true
  validate :validate_quantity, on: [:save, :create]

  private

  def validate_quantity
    errors.add(:answers_quantity, 'There must be 1 to 4 answers per question') unless question.answers.size < 4
  end
end
