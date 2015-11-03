class Comment < ActiveRecord::Base
  belongs_to :user
  validates :user, presence: true
  belongs_to :post
  validates :post, presence: true
  validates :content, presence: true
end
