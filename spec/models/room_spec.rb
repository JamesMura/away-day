require 'spec_helper'

describe Room do
   it {should allow_mass_assignment_of :name}
   it {should allow_mass_assignment_of :colour}
   it {should validate_presence_of :name}
   it {should validate_presence_of :colour}
end
