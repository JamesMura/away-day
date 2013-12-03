require 'spec_helper'

describe Session do
  describe 'validation' do
    it 'should not create session without a speaker' do
      session = Session.new({})
      session.should_not be_valid
      session.errors['speaker'].should == ["can't be blank"]
    end
  end
end