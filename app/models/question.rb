class Question < ApplicationRecord
  belongs_to :test

  has_many :answers, dependent: :destroy

  validates :body, presence: true
  validates_associated :answers
  validates_presence_of :answers # min 1 answer 
end
