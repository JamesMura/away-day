class Session < ActiveRecord::Base
  attr_accessible :speakers
  validates :speakers, presence: true
end