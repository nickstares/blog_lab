class Author < ActiveRecord::Base
  validates :first_name, :last_name, presence: true
  validates :first_name, :last_name, length: {in: 2...20}
  has_many :posts, dependent: :destroy
end
