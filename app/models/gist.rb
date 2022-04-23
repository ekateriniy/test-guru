class Gist < ApplicationRecord
  belongs_to :user
  belongs_to :question

  validates :url, presence: true

  def url_hash
    url.split('.com/')[1]
  end
end
