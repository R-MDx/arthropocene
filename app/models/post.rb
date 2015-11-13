class Post < ActiveRecord::Base
  belongs_to :user
  validates :user, presence: true

  has_many :comments, dependent: :destroy

  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/

  validates :title, :description, :story, :picture, presence: true
end

