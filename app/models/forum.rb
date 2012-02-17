class Forum < ActiveRecord::Base
  validates :title, presence:true
  belongs_to :user
  has_many :posts, as: :postable
end
