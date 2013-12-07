class Speaker < ActiveRecord::Base
  attr_accessible :bio, :name, :photo, :sessions
  
  has_and_belongs_to_many :sessions
  
  validates :name, :presence => true
  
  validates :bio, :presence => true
  
  validates :photo, :presence => true
end
