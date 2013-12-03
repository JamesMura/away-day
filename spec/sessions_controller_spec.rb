require 'spec_helper'

describe SessionsController, :type => :controller do
  describe 'new' do
    it 'should assign new session to @session' do
      session = stub_model Session
      Session.stub!(:new).and_return(session)
      get :new
      assigns[:session].should == session
    end
  end
end