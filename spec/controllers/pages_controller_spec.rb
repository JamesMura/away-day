require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'emergency'" do
    it "returns http success" do
      get 'emergency'
      response.should be_success
    end
  end

  describe "GET 'directions'" do
    it "returns http success" do
      get 'directions'
      response.should be_success
    end
  end

end
