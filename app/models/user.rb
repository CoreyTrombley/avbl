# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  first_name             :string(255)      default("User2013-03-11 17:18:07 -0400")
#  last_name              :string(255)      default("")
#  date_of_birth          :date
#  gender                 :string(255)      default("Hidden")
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  avatar                 :string(255)
#

class User < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  has_many :projects
  has_many :friendships
  has_many :friends, :through => :friendships
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :date_of_birth, :gender, :email, :password, :password_confirmation, :remember_me, :avatar, :avatar_cache, :remove_avatar
  # attr_accessible :title, :body
  # validates_presence_of   :avatar
  validates_integrity_of  :avatar
  validates_processing_of :avatar
end
