class Comment < ApplicationRecord
  #belongs_to :micropost
  validates :content, presence: true
  validates :user_id, presence: true
  validates :micropost_id, presence: true

  def user
    User.find_by id: user_id
  end
end
