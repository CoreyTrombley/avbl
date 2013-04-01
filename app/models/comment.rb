# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  comment    :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  project_id :integer
#

class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :projects
  attr_accessible :comment, :user_id, :project_id 
end
