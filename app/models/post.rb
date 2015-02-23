class Post < ActiveRecord::Base
  validates :title, :body, :category, presence: true
  belongs_to :author
  validates :title, length: {minimum: 3}
end
