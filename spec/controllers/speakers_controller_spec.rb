require 'spec_helper'


describe SpeakersController do

  def valid_attributes
    {:name => "who", :bio => "awesome TWer",:photo => "http://pic.png"}
  end


  describe "GET index" do
    it "assigns all speakers as @speakers" do
      speaker = Speaker.create! valid_attributes
      get :index, {}
      assigns(:speakers).should eq([speaker])
    end
  end

  describe "GET show" do
    it "assigns the requested speaker as @speaker" do
      speaker = Speaker.create! valid_attributes
      get :show, {:id => speaker.to_param}
      assigns(:speaker).should eq(speaker)
    end
  end

  describe "GET new" do
    it "assigns a new speaker as @speaker" do
      get :new, {}
      assigns(:speaker).should be_a_new(Speaker)
    end
  end

  describe "GET edit" do
    it "assigns the requested speaker as @speaker" do
      speaker = Speaker.create! valid_attributes
      get :edit, {:id => speaker.to_param}
      assigns(:speaker).should eq(speaker)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Speaker" do
        expect {
          post :create, {:speaker => valid_attributes}
        }.to change(Speaker, :count).by(1)
      end

      it "assigns a newly created speaker as @speaker" do
        post :create, {:speaker => valid_attributes}
        assigns(:speaker).should be_a(Speaker)
        assigns(:speaker).should be_persisted
      end

      it "redirects to the created speaker" do
        post :create, {:speaker => valid_attributes}
        response.should redirect_to(Speaker.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved speaker as @speaker" do
        Speaker.any_instance.stub(:save).and_return(false)
        post :create, {:speaker => {}}
        assigns(:speaker).should be_a_new(Speaker)
      end

      it "re-renders the 'new' template" do
        Speaker.any_instance.stub(:save).and_return(false)
        post :create, {:speaker => {}}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested speaker" do
        speaker = Speaker.create! valid_attributes
        Speaker.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => speaker.to_param, :speaker => {'these' => 'params'}}
      end

      it "assigns the requested speaker as @speaker" do
        speaker = Speaker.create! valid_attributes
        put :update, {:id => speaker.to_param, :speaker => valid_attributes}
        assigns(:speaker).should eq(speaker)
      end

      it "redirects to the speaker" do
        speaker = Speaker.create! valid_attributes
        put :update, {:id => speaker.to_param, :speaker => valid_attributes}
        response.should redirect_to(speaker)
      end
    end

    describe "with invalid params" do
      it "assigns the speaker as @speaker" do
        speaker = Speaker.create! valid_attributes
        Speaker.any_instance.stub(:save).and_return(false)
        put :update, {:id => speaker.to_param, :speaker => {}}
        assigns(:speaker).should eq(speaker)
      end

      it "re-renders the 'edit' template" do
        speaker = Speaker.create! valid_attributes
        Speaker.any_instance.stub(:save).and_return(false)
        put :update, {:id => speaker.to_param, :speaker => {}}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested speaker" do
      speaker = Speaker.create! valid_attributes
      expect {
        delete :destroy, {:id => speaker.to_param}
      }.to change(Speaker, :count).by(-1)
    end

    it "redirects to the speakers list" do
      speaker = Speaker.create! valid_attributes
      delete :destroy, {:id => speaker.to_param}
      response.should redirect_to(speakers_url)
    end
  end

end
