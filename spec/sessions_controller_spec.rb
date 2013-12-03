require 'spec_helper'

describe SessionsController, :type => :controller do
  describe 'GET new' do
    it 'should assign new session to @session' do
      session = stub_model Session
      Session.stub!(:new).and_return(session)
      get :new
      assigns[:session].should == session
    end
  end

  describe 'POST create' do
    it 'should create session and render index' do
      post :create, :session => {:speakers => 'Paul'}
      id =  assigns[:session].id

      flash[:notice].should == "Session was created successfully"
      response.should redirect_to "/sessions/#{id}"
    end

    it 'should not create session without a speaker and return new' do
      post :create

      response.should render_template('new')
    end
  end
end