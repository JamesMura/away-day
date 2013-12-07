class Session < ActiveRecord::Base
  attr_accessible :description, :endTime, :room, :startTime, :title , :room_id
  
  belongs_to :room
  
  validates :title , :presence => true
  
  validates :startTime , :presence => true
  
  validates :endTime , :presence => true
  
  validates :description , :presence => true
end
