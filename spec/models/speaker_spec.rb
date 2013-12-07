require 'spec_helper'

describe Speaker do
  
  it {should have_and_belong_to_many :sessions}
  
  it {should validate_presence_of :name}
  
  it {should validate_presence_of :bio}
  
  it {should validate_presence_of :photo}
end
