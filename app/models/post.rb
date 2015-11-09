class Post < ActiveRecord::Base
  belongs_to :user
  validates :user, presence: true

  has_many :comments, dependent: :destroy
  validates :title, :description, :story, presence: true
end

