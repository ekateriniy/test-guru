class Gist < ApplicationRecord
  belongs_to :user
  belongs_to :question

  validates :url, presence: true

  def url_hash
    URI.split(url)[5].split('/')[-1]
  end
end
