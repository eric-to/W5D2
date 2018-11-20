class Post < ApplicationRecord
  validates :title, presence: true 
  validates :subs, presence: { message: 'must have at least one sub' }
  
  belongs_to :author,
    foreign_key: :user_id,
    class_name: :User 
    
  belongs_to :sub
  
  has_many :subs,
    through: :post_subs
    source: :sub
    
end
