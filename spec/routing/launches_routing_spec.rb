require "spec_helper"

describe LaunchesController do
  describe "routing" do

    it "routes to #index" do
      get("/launches").should route_to("launches#index")
    end

    it "routes to #new" do
      get("/launches/new").should route_to("launches#new")
    end

    it "routes to #show" do
      get("/launches/1").should route_to("launches#show", :id => "1")
    end

    it "routes to #edit" do
      get("/launches/1/edit").should route_to("launches#edit", :id => "1")
    end

    it "routes to #create" do
      post("/launches").should route_to("launches#create")
    end

    it "routes to #update" do
      put("/launches/1").should route_to("launches#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/launches/1").should route_to("launches#destroy", :id => "1")
    end

  end
end
