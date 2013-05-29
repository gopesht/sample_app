class Micropost < ActiveRecord::Base
 belongs_to :user
 
  attr_accessible :content, :user_id
  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id ,presence: true
  default_scope order: 'microposts.created_at DESC'
end
