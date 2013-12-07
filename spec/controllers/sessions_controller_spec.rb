require 'spec_helper'


describe SessionsController do

  def valid_attributes
    {:title=> "talk 1",:description => "cool talk", :startTime => DateTime.new(2001,2,3), :endTime => DateTime.new(2001,2,3)  }
  end


  describe "GET index" do
    it "assigns all sessions as @sessions" do
      session = Session.create! valid_attributes
      get :index, {}
      assigns(:sessions).should eq([session])
    end
  end

  describe "GET show" do
    it "assigns the requested session as @session" do
      session = Session.create! valid_attributes
      get :show, {:id => session.to_param}
      assigns(:session).should eq(session)
    end
  end

  describe "GET new" do
    it "assigns a new session as @session" do
      get :new, {}
      assigns(:session).should be_a_new(Session)
    end
  end

  describe "GET edit" do
    it "assigns the requested session as @session" do
      session = Session.create! valid_attributes
      get :edit, {:id => session.to_param}
      assigns(:session).should eq(session)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Session" do
        expect {
          post :create, {:session => valid_attributes}
        }.to change(Session, :count).by(1)
      end

      it "assigns a newly created session as @session" do
        post :create, {:session => valid_attributes}
        assigns(:session).should be_a(Session)
        assigns(:session).should be_persisted
      end

      it "redirects to the created session" do
        post :create, {:session => valid_attributes}
        response.should redirect_to(Session.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved session as @session" do
        Session.any_instance.stub(:save).and_return(false)
        post :create, {:session => {}}
        assigns(:session).should be_a_new(Session)
      end

      it "re-renders the 'new' template" do
        Session.any_instance.stub(:save).and_return(false)
        post :create, {:session => {}}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested session" do
        session = Session.create! valid_attributes
        Session.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => session.to_param, :session => {'these' => 'params'}}
      end

      it "assigns the requested session as @session" do
        session = Session.create! valid_attributes
        put :update, {:id => session.to_param, :session => valid_attributes}
        assigns(:session).should eq(session)
      end

      it "redirects to the session" do
        session = Session.create! valid_attributes
        put :update, {:id => session.to_param, :session => valid_attributes}
        response.should redirect_to(session)
      end
    end

    describe "with invalid params" do
      it "assigns the session as @session" do
        session = Session.create! valid_attributes
        Session.any_instance.stub(:save).and_return(false)
        put :update, {:id => session.to_param, :session => {}}
        assigns(:session).should eq(session)
      end

      it "re-renders the 'edit' template" do
        session = Session.create! valid_attributes
        Session.any_instance.stub(:save).and_return(false)
        put :update, {:id => session.to_param, :session => {}}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested session" do
      session = Session.create! valid_attributes
      expect {
        delete :destroy, {:id => session.to_param}
      }.to change(Session, :count).by(-1)
    end

    it "redirects to the sessions list" do
      session = Session.create! valid_attributes
      delete :destroy, {:id => session.to_param}
      response.should redirect_to(sessions_url)
    end
  end

end
