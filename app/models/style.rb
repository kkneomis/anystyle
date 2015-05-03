class Style < ActiveRecord::Base
  acts_as_votable
   acts_as_mappable :auto_geocode=>{:field=>:address, :error_message=>'Could not geocode address'}
  validates :name, :description, :presence => true
  mount_uploader :image1, ImageUploader
  
  belongs_to :user
  belongs_to :stylist, class_name: "User"
  
  has_many :comments, dependent: :destroy
  has_many :activities

#this is changing
end
