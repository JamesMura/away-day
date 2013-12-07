class Room < ActiveRecord::Base
  attr_accessible :colour, :name
  validates :name , :presence => true
  validates :colour , :presence => true
end
