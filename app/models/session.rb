class Session < ActiveRecord::Base
  validates :speakers, presence: true
end