class Post < ActiveRecord::Base
  belongs_to :user
  validates :user, presence: true

  has_many :comments, dependent: :destroy
  validates :title, :description, :story, presence: true

  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/
end

