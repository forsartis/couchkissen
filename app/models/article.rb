class Article < ActiveRecord::Base
  attr_accessible :title, :content
  validates :title, :content, presence:true
  belongs_to :user
  has_many :posts, as: :postable, dependent: :delete_all
end
