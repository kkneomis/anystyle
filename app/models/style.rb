class Style < ActiveRecord::Base
  mount_uploader :image1, ImageUploader
  
  belongs_to :user
end
