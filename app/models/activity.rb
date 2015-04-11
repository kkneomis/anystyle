class Activity < ActiveRecord::Base
  belongs_to :user
  has_many :users
  belongs_to :style
  belongs_to :comment
end
