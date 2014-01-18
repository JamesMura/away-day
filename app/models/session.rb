class Session < ActiveRecord::Base
  attr_accessible :description, :endTime, :room, :startTime, :title , :room_id, :speakers, :speaker_ids
  
  belongs_to :room
  
  validates :title , :presence => true
  
  validates :startTime , :presence => true
  
  validates :endTime , :presence => true
  
  validates :description , :presence => true
  
  has_and_belongs_to_many :speakers
end
