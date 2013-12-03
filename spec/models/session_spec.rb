require 'spec_helper'

describe Session do
  describe 'validation' do
    it 'should not create session without a speaker' do
      session = Session.create({})
      session.should_not be_valid
      session.errors['speakers'].should == ["can't be blank"]
    end
  end
end