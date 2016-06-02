class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true, length: {minimum: 3}
  has_many :comments, dependent: :destroy

  def self.search(search)
    where("title ILIKE ?", "%#{search}%")
  end

end
