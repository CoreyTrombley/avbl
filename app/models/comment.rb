class Comment < ActiveRecord::Base
  belongs_to :user
  attr_accessible :comment
end
