class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :styles, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :activities
  validates :name, :phone, :presence => true 
  
  acts_as_voter
  acts_as_follower
  acts_as_followable
  
  mount_uploader :image, ImageUploader
end
