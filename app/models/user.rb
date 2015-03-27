class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :styles, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :name, :presence => true 
  
  acts_as_voter
  
  mount_uploader :image, ImageUploader
end
