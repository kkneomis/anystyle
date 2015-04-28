class Style < ActiveRecord::Base
  acts_as_votable
  validates :name, :description, :presence => true
  mount_uploader :image1, ImageUploader
  
  belongs_to :user
  belongs_to :stylist, class_name: "User"
  
  has_many :comments, dependent: :destroy
  has_many :activities


end
