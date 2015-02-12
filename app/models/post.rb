class Post < ActiveRecord::Base

  # associations
  belongs_to :user
  # associations
  has_many :comments, dependent: :destroy

  # validation
  default_scope -> { order(created_at: :desc) }
  validates :title, presence: true
  validates :content, presence: true, length: { maximum: 140 }
end
