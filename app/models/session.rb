class Session < ActiveRecord::Base
  validates :speaker, presence: true
end