class Style < ActiveRecord::Base
  acts_as_votable
  validates :name, :description, :presence => true
  mount_uploader :image1, ImageUploader
  
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :activities


end
