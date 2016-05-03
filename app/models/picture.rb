class Picture < ActiveRecord::Base
  belongs_to :users
  has_many :UpvoteDownvote
end
