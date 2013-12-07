require 'spec_helper'

describe Session do
  it {should belong_to :room}
  
  it {should validate_presence_of :title}
  
  it {should validate_presence_of :description}
  
  it {should validate_presence_of :startTime}
  
  it {should validate_presence_of :endTime}
  
  it {should allow_mass_assignment_of :title}
  
  it {should allow_mass_assignment_of :room_id}
  
  it {should allow_mass_assignment_of :startTime}
  
  it {should allow_mass_assignment_of :room}
  
  it {should allow_mass_assignment_of :endTime}
  
  it {should allow_mass_assignment_of :description}
end
