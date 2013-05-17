# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Project < ActiveRecord::Base
  belongs_to :user
  has_many :comments, :dependent => :destroy
  attr_accessible :name, :description, :tag_list, :user_id
  has_many :tags
  acts_as_taggable

  def self.text_search(query)
    if query.present?
      where("name ilike :q or description ilike :q", q: "%#{query}%")
    else
      scoped
    end
  end
end
